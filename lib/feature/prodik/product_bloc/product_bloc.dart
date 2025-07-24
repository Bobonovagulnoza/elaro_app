import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/failure/failure_model.dart';
import '../../home/data/model/product_model.dart';
import '../../home/data/repository/products_repository_impl.dart';
part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductsRepositoryImpl impl;

  ProductBloc( this.impl) : super(const ProductState.loading()) {
    on<_FetchData>(_fetchData);
  }

  Future<void> _fetchData(_FetchData event, Emitter<ProductState> emit) async {
    emit(const ProductState.loading());
    final request = await impl.product(event.id);

  }
}






// class ProductBloc extends Bloc<ProductEvent, ProductState> {
//   final ProductRepository repository;
//
//   ProductBloc(this.repository) : super(const ProductState.loading()) {
//     on<_FetchData>((event, emit) async {
//       emit(const ProductState.loading());
//       try {
//         final data = await repository.getProductById(event.id);
//         emit(ProductState.success(data));
//       } catch (e) {
//         emit(ProductState.failure(FailureModel(message: e.toString())));
//       }
//     });
//   }
// }
