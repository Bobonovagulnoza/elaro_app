part of 'card_bloc.dart';

@freezed
class CardState with _$CardState {
  const factory CardState.loading() = _Loading;
  const factory CardState.success({required List<CardModel> data}) = _Success;
  const factory CardState.failure() = _Failure;
}
