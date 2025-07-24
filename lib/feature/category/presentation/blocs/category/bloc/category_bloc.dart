import 'package:bloc/bloc.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/category_model.dart';
import 'package:elaro_app/feature/home/data/repository/category_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_event.dart';

part 'category_state.dart';

part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepositoryImpl impl;

  CategoryModel data = const CategoryModel();

  CategoryBloc(this.impl) : super(const CategoryState.loading()) {
    on<_FetchData>(_fetchData);
  }

  _fetchData(_FetchData event, Emitter<CategoryState> emit) async {
    final request = await impl.category(event.id);
    String selectedColor = "";
    String minPrice = "";
    String maxPrice = "";
    try {
      request.fold((left) => emit(CategoryState.failure(data: left)), (right) {
        data = right;
        emit(
          CategoryState.success(
            data: right,
            selectedColor: selectedColor,
            minPrice: minPrice,
            maxPrice: maxPrice,
            colors: [],
          ),
        );
      });
      final colors = await impl.getColors(event.id);
      emit(
        CategoryState.success(
          data: data,
          selectedColor: selectedColor,
          minPrice: minPrice,
          maxPrice: maxPrice,
          colors: colors,
        ),
      );
    } catch (e) {
      emit(CategoryState.failure(data: FailureModel(e.toString())));
    }
  }
}
