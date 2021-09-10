import 'package:bloc/bloc.dart';
import 'package:facebook/modul/home/home_cubit/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates>{

  bool selected = false;
  HomeCubit (): super(InitialHomeState());
  static HomeCubit get(context) => BlocProvider.of(context);
}