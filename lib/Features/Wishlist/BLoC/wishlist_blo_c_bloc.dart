import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wishlist_blo_c_event.dart';
part 'wishlist_blo_c_state.dart';

class WishlistBloCBloc extends Bloc<WishlistBloCEvent, WishlistBloCState> {
  WishlistBloCBloc() : super(WishlistBloCInitial()) {
    on<WishlistBloCEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
