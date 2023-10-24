import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_ecommerce/Data/grocery_data.dart';
import 'package:bloc_ecommerce/Features/Home/Models/home_product_data_model.dart';
import 'package:meta/meta.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductWishlistButtonClickedEvent>(
        homeProductWishlistButtonClickedEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);

    //Event handlers
    on<HomeWishlistButtonNavigateEvent>(homeWishlistButtonNavigateEvent);
    on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);
  }

  //Corresponding methods

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));

    List<ProductDataModel> products = GroceryData.groceryProducts
        .map((e) => ProductDataModel(
        id: e['id'],
        name: e['name'],
        description: e['description'],
        price: e['price'],
        imageUrl: e['imageUrl']
    ))
        .toList();

    emit(HomeLoadedSuccessState(products: products));
  }



  FutureOr<void> homeProductWishlistButtonClickedEvent(
      HomeProductWishlistButtonClickedEvent event, Emitter<HomeState> emit) {
    print("Wishlist product clicked!");
  }

  FutureOr<void> homeProductCartButtonClickedEvent(
      HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
    print("Cart product clicked!");
  }

  FutureOr<void> homeWishlistButtonNavigateEvent(
      HomeWishlistButtonNavigateEvent event, Emitter<HomeState> emit) {
    print("Wishlist navigate clicked!");
    emit(HomeNavigateToWishlistPageActionState());
  }

  FutureOr<void> homeCartButtonNavigateEvent(HomeCartButtonNavigateEvent event,
      Emitter<HomeState> emit) {
    print("Cart navigate clicked!");
    emit(HomeNavigateToCartPageActionState());
  }

}

