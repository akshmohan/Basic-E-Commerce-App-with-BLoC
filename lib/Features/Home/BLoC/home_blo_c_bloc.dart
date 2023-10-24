import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'home_blo_c_event.dart';
part 'home_blo_c_state.dart';

class HomeBloCBloc extends Bloc<HomeBloCEvent, HomeBloCState> {
  HomeBloCBloc() : super(HomeBloCInitial()) {
    on<HomeBloCEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
