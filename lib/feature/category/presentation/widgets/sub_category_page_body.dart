import 'package:cached_network_image/cached_network_image.dart';
import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:elaro_app/core/widgets/empty_widget.dart';
import 'package:elaro_app/feature/category/presentation/blocs/sub_category/bloc/sub_category_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SubCategoryPageBody extends StatelessWidget {
  const SubCategoryPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryBloc, SubCategoryState>(
      builder: (context, state) {
        return state.when(
          loading:
              () => Center(
                child: CircularProgressIndicator(color: AppColor.primary),
              ),
          success: (data) {
            final products = data.data;
            if (products?.products?.isEmpty ?? true) {
              return EmptyWidget();
            }
            return GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemCount: products?.products?.length ?? 0,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.6,
              ),
              itemBuilder: (context, index) {
                final product = products?.products?[index];
                return ZoomTapAnimation(
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child:
                                    (product!.images ?? []).isNotEmpty
                                        ? Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: CachedNetworkImage(
                                              fit: BoxFit.fitWidth,
                                              imageUrl:
                                                  product
                                                      .images
                                                      ?.firstOrNull
                                                      ?.image ??
                                                  "",
                                              progressIndicatorBuilder:
                                                  (context, url, progress) =>
                                                      CircularProgressIndicator(),
                                            ),
                                          ),
                                        )
                                        : SizedBox(),
                              ),
                              Positioned(
                                top: 6,
                                right: 6,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_outline),
                                ),
                              ),
                              if ((product.discountType ?? "").isNotEmpty)
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColor.lightGreen,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text("discount"),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                Text(product.nameUz.toString(), maxLines: 2),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          failure: (failure) => Text("Error: $failure"),
        );
      },
    );
  }
}
