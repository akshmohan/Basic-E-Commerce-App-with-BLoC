part of 'home_blo_c_bloc.dart';

@immutable
abstract class HomeBloCState {}

abstract class HomeBloCActionState extends HomeBloCState{}

class HomeBloCInitial extends HomeBloCState {}

class HomeBloCLoadingState extends HomeBloCState{}

class HomeBloCLoadingSuccessState extends HomeBloCState{}

class HomeBloCErrorState extends HomeBloCState{}

class HomeBloCNavigateToWishlistPageActionState extends HomeBloCActionState{}



