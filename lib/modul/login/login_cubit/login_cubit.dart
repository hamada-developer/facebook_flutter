import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitialLoginState());
  Widget? prefixIcon;
  bool isHide = false;
  FirebaseAuth auth = FirebaseAuth.instance;

  static LoginCubit get(context) => BlocProvider.of(context);

  void toggleObscure() {
    isHide = !isHide;
    emit(ToggleObscureState());
  }

  void loginWithEmail({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingState());
    auth.signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
          emit(LoginSuccessState());
          print('Success');
    }).catchError((onError){
      emit(LoginErrorState(error: onError.toString()));
      print( 'Error ${onError.toString()}');
    });
  }
}
