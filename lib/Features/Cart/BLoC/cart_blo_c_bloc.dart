import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_blo_c_event.dart';
part 'cart_blo_c_state.dart';

class CartBloCBloc extends Bloc<CartBloCEvent, CartBloCState> {
  CartBloCBloc() : super(CartBloCInitial()) {
    on<CartBloCEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
