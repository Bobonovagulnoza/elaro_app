import 'package:bloc/bloc.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/products_model.dart';
import 'package:elaro_app/feature/home/data/repository/products_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsRepositoryImpl impl;
  List<Datum> _products = [];

  ProductsBloc(this.impl) : super(ProductsState.loading()) {
    on<_FetchData>(_fetchData);
    on<_SearchProducts>(_searchProducts);
    on<_ClearSearch>(_clearSearch);
  }

  Future<void> _fetchData(_FetchData event, Emitter<ProductsState> emit) async {
    final nextIndex = _products.length ~/ 10 + 1;
    try {
      final request = await impl.products(pageIndex: nextIndex);

      request.fold((left) => emit(ProductsState.failure(data: left)), (right) {
        final newData = right.data ?? [];

        if (newData.isEmpty) return;
        _products.addAll(newData);

        final currentState = state;
        if (currentState is _Success && currentState.searchQuery.isNotEmpty) {
          final filtered = _filterProducts(currentState.searchQuery);
          emit(
            ProductsState.success(
              data: ProductsModel(data: _products),
              filteredProducts: filtered,
              searchQuery: currentState.searchQuery,
            ),
          );
        } else {
          emit(
            ProductsState.success(
              data: ProductsModel(data: _products),
              filteredProducts: _products,
            ),
          );
        }
        emit(ProductsState.success(data: ProductsModel(data: _products)));
      });
    } catch (e) {
      emit(ProductsState.failure(data: FailureModel(e.toString())));
    }
  }

  void _searchProducts(_SearchProducts event, Emitter<ProductsState> emit) {
    final currnetState = state;
    if (currnetState is _Success) {
      if (event.query.isEmpty) {
        emit(
          currnetState.copyWith(
            filteredProducts: _products,
            searchQuery: "",
            isSearching: false,
          ),
        );
        return;
      }

      emit(currnetState.copyWith(isSearching: true));

      final filtered = _filterProducts(event.query);

      emit(
        currnetState.copyWith(
          filteredProducts: filtered,
          searchQuery: event.query,
          isSearching: false,
        ),
      );
    }
  }

  void _clearSearch(_ClearSearch event, Emitter<ProductsState> emit) {
    final currentState = state;

    if (currentState is _Success) {
      emit(
        currentState.copyWith(
          filteredProducts: _products,
          searchQuery: "",
          isSearching: false,
        ),
      );
    }
  }

  List<Datum> _filterProducts(String query) {
    final lowercase = query.toLowerCase();

    return _products.where((e) {
      final name = e.nameUz?.toLowerCase() ?? "";

      return name.contains(lowercase);
    }).toList();
  }
}
