import 'package:cached_network_image/cached_network_image.dart';
import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:elaro_app/core/routes/app_routes.dart';
import 'package:elaro_app/core/source/main_source.dart';
import 'package:elaro_app/feature/category/data/model/category_constructr.dart';
import 'package:elaro_app/feature/category/presentation/blocs/categories/bloc/categories_bloc.dart';
import 'package:elaro_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(CategoriesEvent.fetchData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Omabop kategoriyalar"),
            12.height,
            state.when(
              loading:
                  () => Shimmer.fromColors(
                baseColor: AppColor.lightGray200,
                highlightColor: AppColor.lightGray500,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  height: 200,
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.6,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    scrollDirection: Axis.horizontal,
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
                return SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1.6,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: categories?.length ?? 0,
                        itemBuilder: (context, index) {
                          final category = categories?[index];
                          return ZoomTapAnimation(
                            onTap: () {
                              context.push(
                                AppRouter.category,
                                extra:
                                // category?.id ?? 0,
                                CategoryConstructorModel(
                                  id: category?.id ?? 0,
                                  titleUz: category?.nameUz ?? "",
                                  titleRu: category?.nameRu ?? "",
                                  titleCrl: category?.nameCrl ?? "",
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: category?.backgroundImg ?? "",
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    top: 8,
                                  ),
                                  child: Text(
                                    maxLines: 2,
                                    category?.nameUz ?? "",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 16),
                      GestureDetector(
                        onTap: () {
                          MainSources.currentPage.value = 1;
                          context.go(AppRouter.globalSearch);
                        },
                        child: Container(
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("hammasi"),
                                Icon(Icons.arrow_forward_ios_rounded, size: 14),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                );
              },
              failure: (failure) => Text("Xatolik: $failure"),
            ),
          ],
        );
      },
    );
  }
}
