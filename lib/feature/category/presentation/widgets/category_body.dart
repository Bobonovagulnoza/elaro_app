import 'package:cached_network_image/cached_network_image.dart';
import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:elaro_app/core/routes/app_routes.dart';
import 'package:elaro_app/feature/category/data/model/category_constructr.dart';
import 'package:elaro_app/feature/category/presentation/blocs/categories/bloc/categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(CategoriesEvent.fetchData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return state.when(
          loading:
              () => Shimmer.fromColors(
                baseColor: AppColor.lightGray200,
                highlightColor: AppColor.lightGray500,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    // scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (ctx, index) {
                      return ZoomTapAnimation(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0, top: 8),
                              child: Text("nkdfj", maxLines: 2),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
          success: (data) {
            var categories = data.data;
            return LiquidPullToRefresh(
              backgroundColor: AppColor.primary,
              color: Colors.white,
              showChildOpacityTransition: false,
              onRefresh: () async => _fetchData(),
              child: ListView.builder(
                itemCount: categories?.length ?? 0,
                itemBuilder: (context, index) {
                  final category = categories?[index];
                  return ListTile(
                    onTap: () {
                      context.push(
                        AppRouter.category,
                        extra: CategoryConstructorModel(
                          id: category?.id ?? 0,
                          titleUz: category?.nameUz ?? "",
                          titleRu: category?.nameRu ?? "",
                          titleCrl: category?.nameCrl ?? "",
                        ),
                      );
                    },
                    leading: SizedBox(
                      height: 24,
                      width: 24,
                      child: CachedNetworkImage(
                        imageUrl: category?.image ?? "",
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                const CircleAvatar(),
                        errorWidget: (context, url, error) {
                          try {
                            return SvgPicture.network(
                              category?.image ?? "",
                              color: Colors.black,
                              height: 30,
                              width: 30,
                            );
                          } catch (e) {
                            return Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColor.primaryDark,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    title: Text(category?.nameUz ?? ""),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppColor.lightGray600,
                    ),
                  );
                },
              ),
            );
          },
          failure: (failure) => Text("Xatolik: $failure"),
        );
      },
    );
  }

  _fetchData() {
    context.read<CategoriesBloc>().add(CategoriesEvent.fetchData());
  }
}
