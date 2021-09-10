import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:facebook/model/user_model.dart';
import 'package:facebook/modul/register/register_cubit/register_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {

  FirebaseAuth? _firebaseAuth ;
  UserModel? _userModel;
  FirebaseFirestore? _firebaseFirestore;

  RegisterCubit() : super(InitialRegisterState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  void registerFacebook({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) {
     _firebaseAuth = FirebaseAuth.instance;
     _firebaseAuth!.createUserWithEmailAndPassword(email: email, password: password).then((value) {
       print('success');
       saveFirestore( uId: value.user!.uid, name: name , email: email, phone: phone);
     }).catchError((onError){
       print('Error ${onError.toString()}');
     });
  }

  void saveFirestore({
    required String uId,
    required String name,
    required String email,
    required String phone,
}){
    _userModel = UserModel(uId: uId, name: name, email: email, phone: phone);
    _firebaseFirestore = FirebaseFirestore.instance;
    _firebaseFirestore!.collection('Users').doc(uId).set(_userModel!.toMap()).then((value){
      print('success');
      emit(RegisterSuccessState());
    }).catchError((onError){
      emit(RegisterErrorState(error: onError.toString()));
      print('Error ${onError.toString()}');
    });
  }
}