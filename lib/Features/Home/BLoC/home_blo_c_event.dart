part of 'home_blo_c_bloc.dart';

@immutable
abstract class HomeBloCEvent {}

class HomeCartButtonClickedEvent extends HomeBloCEvent{

}

class HomeWishlistButtonClickedEvent extends HomeBloCEvent{

}

class HomeCartButtonNavigateEvent extends HomeBloCEvent{

}

class HomeWishlistButtonNavigateEvent extends HomeBloCEvent{

}