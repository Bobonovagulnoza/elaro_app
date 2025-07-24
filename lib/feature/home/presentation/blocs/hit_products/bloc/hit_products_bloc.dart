import 'package:bloc/bloc.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/products_model.dart';
import 'package:elaro_app/feature/home/data/repository/products_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hit_products_event.dart';
part 'hit_products_state.dart';
part 'hit_products_bloc.freezed.dart';

class HitProductsBloc extends Bloc<HitProductsEvent, HitProductsState> {
  final ProductsRepositoryImpl impl;
  List<Datum> _products = [];

  HitProductsBloc(this.impl) : super(HitProductsState.loading()) {
    on<_FetchData>(_fetchData);
  }
  Future<void> _fetchData(
    _FetchData event,
    Emitter<HitProductsState> emit,
  ) async {
    final nextIndex = _products.length ~/ 10 + 1;
    try {
      final request = await impl.productsHit(pageIndex: nextIndex);

      request.fold((left) => emit(HitProductsState.failure(data: left)), (
        right,
      ) {
        final newData = right.data ?? [];

        if (newData.isEmpty) return;

        _products.addAll(newData);
        emit(HitProductsState.success(data: ProductsModel(data: _products)));
      });
    } catch (e) {
      emit(HitProductsState.failure(data: FailureModel(e.toString())));
    }
  }
}
