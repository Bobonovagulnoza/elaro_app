import 'package:elaro_app/feature/home/presentation/blocs/products/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elaro_app/feature/home/data/model/products_model.dart';
import 'dart:async';

class CustomSearchDelegate extends SearchDelegate<String> {
  final ProductsBloc productsBloc;
  Timer? _debounceTimer;

  CustomSearchDelegate({required this.productsBloc}) {
    productsBloc.add(ProductsEvent.fetchData());
  }

  @override
  String get searchFieldLabel => 'Mahsulotlarni qidiring...';

  @override
  TextStyle get searchFieldStyle =>
      TextStyle(fontSize: 16, color: Colors.black87);

  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: theme.appBarTheme.copyWith(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black87),
        titleTextStyle: TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.grey[600]),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
            productsBloc.add(ProductsEvent.clearSearch());
          },
        ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildSearchResults();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(Duration(milliseconds: 300), () {
      if (query.isNotEmpty) {
        productsBloc.add(ProductsEvent.searchProducts(query));
      } else {
        productsBloc.add(ProductsEvent.clearSearch());
      }
    });

    return _buildSearchResults();
  }

  Widget _buildSearchResults() {
    return BlocProvider.value(
      value: productsBloc,
      child: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          return state.when(
            loading: () => Center(child: CircularProgressIndicator()),
            success: (data, filteredProducts, searchQuery, isSearching) {
              if (isSearching) {
                return Center(child: CircularProgressIndicator());
              }

              if (query.isEmpty) {
                return SizedBox();
              }

              if (filteredProducts.isEmpty) {
                return _buildNoResults();
              }

              return _buildProductsList(filteredProducts);
            },
            failure:
                (error) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outline, size: 48, color: Colors.red),
                      SizedBox(height: 16),
                      Text('Xatolik: $error'),
                    ],
                  ),
                ),
          );
        },
      ),
    );
  }

  Widget _buildNoResults() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off, size: 64, color: Colors.grey[400]),
          SizedBox(height: 16),
          Text(
            'Hech narsa topilmadi',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8),
          Text(
            "'$query' bo'yicha natija yo'q",
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsList(List<Datum> products) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductSearchCard(
          product: product,
          searchQuery: query,
          onTap: () {
            // Mahsulot sahifasiga o'tish
            close(context, product.id.toString());
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }
}

class ProductSearchCard extends StatelessWidget {
  final Datum product;
  final String searchQuery;
  final VoidCallback onTap;

  const ProductSearchCard({
    Key? key,
    required this.product,
    required this.searchQuery,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        title: _buildHighlightedText(product.nameUz ?? 'No name', searchQuery),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

  Widget _buildHighlightedText(String text, String query, {int? maxLines}) {
    if (query.isEmpty) {
      return Text(text, maxLines: maxLines, overflow: TextOverflow.ellipsis);
    }

    final lowercaseText = text.toLowerCase();
    final lowercaseQuery = query.toLowerCase();

    List<TextSpan> spans = [];
    int start = 0;

    while (start < text.length) {
      int index = lowercaseText.indexOf(lowercaseQuery, start);
      if (index == -1) {
        spans.add(TextSpan(text: text.substring(start)));
        break;
      }

      if (index > start) {
        spans.add(TextSpan(text: text.substring(start, index)));
      }

      spans.add(
        TextSpan(
          text: text.substring(index, index + query.length),
          style: TextStyle(
            backgroundColor: Colors.yellow.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      );

      start = index + query.length;
    }

    return RichText(
      text: TextSpan(children: spans, style: TextStyle(color: Colors.black)),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
