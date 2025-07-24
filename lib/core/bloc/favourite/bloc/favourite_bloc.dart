import 'package:bloc/bloc.dart';
import 'package:elaro_app/core/repository/favourite_repository.dart';
import 'package:elaro_app/feature/card/data/model/card_model.dart';
import 'package:elaro_app/feature/home/data/model/product_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';
part 'favourite_bloc.freezed.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  final FavouriteRepositoryImpl impl;

  FavouriteBloc(this.impl) : super(FavouriteState.loading()) {
    on<_FetchData>(_allProducts);
    on<_AddProduct>(_addProduct);
    on<_DeleteProduct>(_deleteProduct);
    // on<_Increment>(_increment);
    // on<_Decrement>(_decrement);
  }

  Future<void> _allProducts(
    _FetchData event,
    Emitter<FavouriteState> emit,
  ) async {
    var result = await impl.getCards();
    print("Fetched cards: $result");
    emit(FavouriteState.allProduct(data: result));
  }

  Future<void> _addProduct(
    _AddProduct event,
    Emitter<FavouriteState> emit,
  ) async {
    final result = await impl.addToCard(
      CardModel(
        titleUz: event.data.nameUz ?? "",
        titleRu: event.data.nameRu ?? "",
        titleCrl: event.data.nameCrl ?? "",
        price: event.data.price ?? "",
        productId: event.data.id.toString(),
        image: event.data.images?.firstOrNull?.image ?? "",
        productCount: 1,
        qty: event.data.qty ?? 0,
        discountEnd: event.data.discountEnd ?? "",
        discountType: event.data.discountType ?? "",
        discountedPrice: event.data.discountedPrice,
        discount: event.data.discount ?? "",
        discountStart: event.data.discountStart ?? "",
        quantity: event.data.quantity ?? 0,
      ),
    );
    add(FavouriteEvent.fetchData());
  }

  Future<void> _deleteProduct(
    _DeleteProduct event,
    Emitter<FavouriteState> emit,
  ) async {
    var result = await impl.deleteCard(event.id.toString());
    add(FavouriteEvent.fetchData());
  }

  // Future<void> _increment(
  //   _Increment event,
  //   Emitter<FavouriteState> emit,
  // ) async {
  //   add(FavouriteEvent.fetchData());
  // }

  // Future<void> _decrement(
  //   _Decrement event,
  //   Emitter<FavouriteState> emit,
  // ) async {
  //   add(FavouriteEvent.fetchData());
  // }
}
