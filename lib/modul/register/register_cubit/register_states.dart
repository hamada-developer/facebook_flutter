abstract class RegisterStates{}
class InitialRegisterState extends RegisterStates{}
class RegisterSuccessState extends RegisterStates{}
class RegisterLoadingState extends RegisterStates{}
class RegisterErrorState extends RegisterStates{
  final String? error;
  RegisterErrorState({this.error});
}