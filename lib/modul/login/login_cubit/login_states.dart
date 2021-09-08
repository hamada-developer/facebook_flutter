abstract class LoginStates{}
class InitialLoginState extends LoginStates{}
class ToggleObscureState extends LoginStates{}
class LoginSuccessState extends LoginStates{}
class LoginLoadingState extends LoginStates{}
class LoginErrorState extends LoginStates{
  String? error;
  LoginErrorState({this.error});
}