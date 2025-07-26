import 'package:elaro_app/core/bloc/favourite/bloc/favourite_bloc.dart';
import 'package:elaro_app/core/mapper/card_to_product_model.dart';
import 'package:elaro_app/core/widgets/empty_widget.dart';
import 'package:elaro_app/core/widgets/product_item_widget.dart';
import 'package:elaro_app/feature/card/data/model/card_model.dart';
import 'package:elaro_app/feature/home/data/model/product_model.dart';
import 'package:elaro_app/feature/profile/presentation/pages/favourite_empty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elaro_app/feature/card/data/mapper/card_model_mapper.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: BlocBuilder<FavouriteBloc, FavouriteState>(
            builder: (context, state) {
              return state.when(
                loading: () => Center(child: CircularProgressIndicator()),
                allProduct: (List<CardModel> data) {
                  if (data.isEmpty) {
                    return SizedBox(child: FavoriteEmptyWidget());
                  }
                  return GridView.builder(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          childAspectRatio: 1 / 1.6,
                        ),
                    itemBuilder: (context, index) {
                      final product = data[index];
                      return ProductItemWidget(
                        ontap: () {},
                        productData: ProductModel(
                          data: product.toProductModel(),
                        ),
                      );
                    },
                  );
                },
                failure: () => EmptyWidget(),
              );
            },
          ),
        ),
      ],
    );
  }
}
