import 'package:bloc/bloc.dart';
import 'package:elaro_app/feature/card/data/model/card_model.dart';
import 'package:elaro_app/feature/card/data/repository/card_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_event.dart';
part 'card_state.dart';
part 'card_bloc.freezed.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  final CardRepositoryImpl impl;

  CardBloc(this.impl) : super(CardState.loading()) {
    on<_FetchData>(_fetchCart);
    on<_AddProduct>(_addProduct);
    on<_UpdateQuantity>(_updateQuantity);
    on<_RemoveProduct>(_removeProduct);
    on<_ClearCart>(_clearCart);
  }

  Future<void> _fetchCart(_FetchData event, Emitter<CardState> emit) async {
    emit(const CardState.loading());
    try {
      final request = await impl.getcartitems();
      emit(CardState.success(data: request));
    } catch (e) {
      emit(const CardState.failure());
    }
  }

  Future<void> _addProduct(_AddProduct event, Emitter<CardState> emit) async {
    try {
      final success = await impl.addProduct(
        CardModel(
          titleUz: "",
          titleRu: "",
          titleCrl: "",
          price: "0",
          productId: event.id,
          image: "",
          productCount: 100,
          qty: event.quantity,
          quantity: event.quantity,
        ),
      );
      if (success) {
        add(const CardEvent.fetchData());
      } else {
        emit(const CardState.failure());
      }
    } catch (e) {
      emit(const CardState.failure());
    }
  }

  Future<void> _updateQuantity(
      _UpdateQuantity event,
      Emitter<CardState> emit,
      ) async {
    try {
      final success = await impl.updateQuantity(event.id, event.count);
      if (success) {
        add(const CardEvent.fetchData());
      } else {
        emit(const CardState.failure());
      }
    } catch (e) {
      emit(const CardState.failure());
    }
  }

  Future<void> _removeProduct(
      _RemoveProduct event,
      Emitter<CardState> emit,
      ) async {
    try {
      final success = await impl.removeFromCard(event.id);
      if (success) {
        add(const CardEvent.fetchData());
      } else {
        emit(const CardState.failure());
      }
    } catch (e) {
      emit(const CardState.failure());
    }
  }

  Future<void> _clearCart(_ClearCart event, Emitter<CardState> emit) async {
    try {
      final success = await impl.decrement(event.id, event.quantity);
      if (success) {
        add(const CardEvent.fetchData());
      } else {
        emit(const CardState.failure());
      }
    } catch (e) {
      emit(const CardState.failure());
    }
  }
}
