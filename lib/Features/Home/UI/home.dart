import 'package:bloc_ecommerce/Features/Cart/UI/cart.dart';
import 'package:bloc_ecommerce/Features/Home/BLoC/home_bloc.dart';
import 'package:bloc_ecommerce/Features/Wishlist/UI/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is !HomeActionState,
      listener: (context, state) {
        if(state is HomeNavigateToCartPageActionState) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
        }
        if(state is HomeNavigateToWishlistPageActionState) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Wishlist()));
        }
      },
      builder: (context, state) {
        switch(context, state){

          case HomeLoadingState:

            return Scaffold(body:Center(
              child: CircularProgressIndicator()
            ));


          case HomeLoadedSuccessState:

            return Scaffold(
              appBar: AppBar(
                title: Text("E-Commerce App with BLoC"),
                actions: [
                  IconButton(onPressed: () {
                    homeBloc.add(HomeWishlistButtonNavigateEvent());
                  }, icon: Icon(Icons.favorite_border)),
                  IconButton(onPressed: () {
                    homeBloc.add(HomeCartButtonNavigateEvent());
                  }, icon: Icon(Icons.shopping_bag_outlined)),

                ],
              ),
            );

          case HomeErrorState:

            return Scaffold(body: Center(
              child: Text('Error!'),

            ),);
          default:
            return SizedBox();

        }
      },
    );
  }
}
