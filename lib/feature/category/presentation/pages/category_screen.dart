import 'package:elaro_app/core/utils/di.dart';
import 'package:elaro_app/core/widgets/search_view_delegate.dart';
import 'package:elaro_app/feature/category/presentation/blocs/categories/bloc/categories_bloc.dart';
import 'package:elaro_app/feature/category/presentation/widgets/category_body.dart';
import 'package:elaro_app/feature/home/presentation/blocs/products/bloc/products_bloc.dart';
import 'package:elaro_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CategoriesBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(
                  productsBloc: context.read<ProductsBloc>(),
                ),
              );
            },
            child: Ink(
              decoration: BoxDecoration(
                color: Color(0xFFF7F8FA),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [Icon(Icons.search), 10.width, Text("Search")],
              ),
            ),
          ),
        ),
        body: SafeArea(child: CategoryBody()),
      ),
    );
  }
}
