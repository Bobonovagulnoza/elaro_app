part of 'card_bloc.dart';

@freezed
class CardEvent with _$CardEvent {
  const factory CardEvent.fetchData() = _FetchData;
  const factory CardEvent.addProduct(String id, int quantity) = _AddProduct;
  const factory CardEvent.clearCart(String id, int quantity) = _ClearCart;
  const factory CardEvent.updateQuantity(String id, int count) =
  _UpdateQuantity;
  const factory CardEvent.removeProduct(String id) = _RemoveProduct;
}
