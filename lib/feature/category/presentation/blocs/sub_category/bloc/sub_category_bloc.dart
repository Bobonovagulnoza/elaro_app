import 'package:bloc/bloc.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/category/data/model/sub_category_model.dart';
import 'package:elaro_app/feature/category/data/repository/sub_category_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_event.dart';
part 'sub_category_state.dart';
part 'sub_category_bloc.freezed.dart';

class SubCategoryBloc extends Bloc<SubCategoryEvent, SubCategoryState> {
  final SubCategoryRepositoryImpl impl;

  SubCategoryBloc(this.impl) : super(SubCategoryState.loading()) {
    on<_FetchData>(_fetchData);
  }

  _fetchData(_FetchData event, Emitter<SubCategoryState> emit) async {
    final request = await impl.subCategory(event.id);

    try {
      request.fold(
        (left) => emit(SubCategoryState.failure(data: left)),
        (right) => emit(SubCategoryState.success(data: right)),
      );
    } catch (e) {
      emit(SubCategoryState.failure(data: FailureModel(e.toString())));
    }
  }
}
