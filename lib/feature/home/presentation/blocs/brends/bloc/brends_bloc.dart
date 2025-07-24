import 'package:bloc/bloc.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/brends_model.dart';
import 'package:elaro_app/feature/home/data/repository/brendS_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brends_event.dart';
part 'brends_state.dart';
part 'brends_bloc.freezed.dart';

class BrendsBloc extends Bloc<BrendsEvent, BrendsState> {
  final BrendsRepositoryImpl impl;

  BrendsBloc(this.impl) : super(BrendsState.loading()) {
    on<_FetchData>(_fetchData);
  }

  _fetchData(_FetchData event, Emitter<BrendsState> emit) async {
    try {
      final request = await impl.brends();
      request.fold(
        (left) => emit(BrendsState.failure(data: left)),
        (right) => emit(BrendsState.success(data: right)),
      );
    } catch (e) {
      emit(BrendsState.failure(data: FailureModel(e.toString())));
    }
  }
}
