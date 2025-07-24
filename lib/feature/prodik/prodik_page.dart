import 'package:elaro_app/feature/prodik/product_bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elaro_app/feature/prodik/produk_body.dart';
import 'model/product_model.dart';


class ProductPage extends StatelessWidget {
  final ProductData productId;

  const ProductPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mahsulot Tafsiloti')),
      body: BlocBuilder<ProductBloc, ProductState>(
    builder: (context, state) {
    return state.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      success: (productModel) {
        final productData = productModel.data;
        if (productData == null) {
          return const Center(child: Text("Ma'lumot topilmadi"));
        }
        return ProductBody(data: productId);
      },
      failure: (message) => Center(child: Text("Xatolik: $message")),
    );
    },
    ),);
  }
}

