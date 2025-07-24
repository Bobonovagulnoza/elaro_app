import 'package:bloc/bloc.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/banner_model.dart';
import 'package:elaro_app/feature/home/data/repository/banner_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_event.dart';
part 'banner_state.dart';
part 'banner_bloc.freezed.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final BannerRepositoryImpl impl;

  BannerBloc(this.impl) : super(BannerState.loading()) {
    on<BannerEvent>((event, emit) async {
      try {
        final request = await impl.fetchdata();
        request.fold(
          (left) {
            emit(BannerState.failure(data: left));
          },
          (right) {
            emit(BannerState.success(data: right));
          },
        );
      } catch (e) {
        emit(BannerState.failure(data: FailureModel("$e")));
      }
    });
  }
}
