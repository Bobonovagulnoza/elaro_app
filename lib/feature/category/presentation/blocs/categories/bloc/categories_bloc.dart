import 'package:bloc/bloc.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/categories_model.dart';
import 'package:elaro_app/feature/home/data/repository/categories_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_event.dart';

part 'categories_state.dart';

part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepositoryImpl impl;

  CategoriesBloc(this.impl) : super(const CategoriesState.loading()) {
    on<_FetchData>(_fetchData);
  }

  _fetchData(_FetchData event, Emitter<CategoriesState> emit) async {
    final request = await impl.categories();
    try {
      request.fold(
        (left) => emit(CategoriesState.failure(data: left)),
        (right) => emit(CategoriesState.success(data: right)),
      );
    } catch (e) {
      emit(CategoriesState.failure(data: FailureModel(e.toString())));
    }
  }
}
