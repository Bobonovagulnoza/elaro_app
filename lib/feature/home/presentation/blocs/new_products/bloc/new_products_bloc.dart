import 'package:bloc/bloc.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/products_model.dart';
import 'package:elaro_app/feature/home/data/repository/products_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_products_event.dart';
part 'new_products_state.dart';
part 'new_products_bloc.freezed.dart';

class NewProductsBloc extends Bloc<NewProductsEvent, NewProductsState> {
  final ProductsRepositoryImpl impl;
  List<Datum> _products = [];

  NewProductsBloc(this.impl) : super(NewProductsState.loading()) {
    on<_FetchData>(_fetchData);
  }

  Future<void> _fetchData(
    _FetchData event,
    Emitter<NewProductsState> emit,
  ) async {
    final nextIndex = _products.length ~/ 10 + 1;
    try {
      final request = await impl.productsNew(pageIndex: nextIndex);

      request.fold((left) => emit(NewProductsState.failure(data: left)), (
        right,
      ) {
        final newData = right.data ?? [];

        if (newData.isEmpty) return;
        _products.addAll(newData);
        emit(NewProductsState.success(data: ProductsModel(data: _products)));
      });
    } catch (e) {
      emit(NewProductsState.failure(data: FailureModel(e.toString())));
    }
  }
}
