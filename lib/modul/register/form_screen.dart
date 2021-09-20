import 'package:facebook/layout/home/home_layout.dart';
import 'package:facebook/modul/register/register_cubit/register_cubit.dart';
import 'package:facebook/modul/register/register_cubit/register_states.dart';
import 'package:facebook/shared/components/component.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit , RegisterStates>(
        listener: (context , state ){
          if(state is RegisterSuccessState){
            navigateAndFinish(context: context , widget: HomeScreen());
          }
        },
        builder: (context , state ){
          var registerCubit = RegisterCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DefaultTextFormField(
                      hint: 'الاسم',
                      controller: nameController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DefaultTextFormField(
                      hint: 'البريد الاكترونى ',
                      controller: emailController,
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DefaultTextFormField(
                      hint: 'كلمة السر',
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DefaultTextFormField(
                      hint: 'رقم الهاتف',
                      controller: phoneController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 80,
                      padding: EdgeInsetsDirectional.all(20),
                      child: Material(
                        borderRadius: BorderRadius.circular(5),
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          onPressed: () {
                            registerCubit.registerFacebook(
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              phone: passwordController.text,
                            );
                          },
                          color: primaryColor,
                          child: Text(
                            'تسجيل',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
