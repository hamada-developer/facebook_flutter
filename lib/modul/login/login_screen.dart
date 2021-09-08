import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:facebook/modul/home/home_screen.dart';
import 'package:facebook/modul/login/login_cubit/login_cubit.dart';
import 'package:facebook/modul/login/login_cubit/login_states.dart';
import 'package:facebook/shared/components/component.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/components/style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if(state is LoginSuccessState){
          navigateAndFinish(context: context, widget: HomeScreen());
        }
      },
      builder: (context, state) {
        var loginCubit = LoginCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/login.jpeg',
                    ),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('...المزيد'),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text('English'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text('Francais'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    child: Column(
                      children: [
                        DefaultTextFormField(
                          hint: 'رقم الهاتف أو البريد الأكترونى',
                          controller: emailController,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty)
                              return 'يرجى أدخال البريد الأكترونى';
                          },
                        ),
                        DefaultTextFormField(
                          hint: 'كلمة السر',
                          controller: passwordController,
                          textInputType: TextInputType.visiblePassword,
                          prefixIcon: IconButton(
                            onPressed: () {
                              loginCubit.toggleObscure();
                            },
                            icon: Icon(
                              Icons.remove_red_eye,
                            ),
                          ),
                          isHide: loginCubit.isHide,
                        ),
                        ConditionalBuilder(
                          condition: state is! LoginLoadingState,
                          builder: (context) => Container(
                            padding: EdgeInsetsDirectional.only(top: 12.0),
                            width: double.infinity,
                            child: MaterialButton(
                              onPressed: () {
                                loginCubit.loginWithEmail(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                              },
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              color: primaryColor,
                            ),
                          ),
                          fallback: (context) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'هل نسيت كلمة السر؟',
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'أو',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 60.0),
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'أنشاء حساب جديد على فيسبوك',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: color2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
