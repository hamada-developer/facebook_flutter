import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:facebook/layout/home/home_layout.dart';
import 'package:facebook/modul/login/login_cubit/login_cubit.dart';
import 'package:facebook/modul/login/login_cubit/login_states.dart';
import 'package:facebook/modul/register/register_screen_1.dart';
import 'package:facebook/shared/components/component.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/web/layout/app_layout.dart';
import 'package:facebook/web/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stack_percentage/stack_percentage.dart';
import 'dart:math';

class LoginScreenWeb extends StatefulWidget {
  @override
  State<LoginScreenWeb> createState() => _LoginScreenWebState();
}

class _LoginScreenWebState extends State<LoginScreenWeb> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (scrollController.hasClients) scrollController.jumpTo(50.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginSuccessState)
          navigateAndFinish(context: context, widget: AppLayout());
      },
      builder: (context, states) {
        var loginCubit = LoginCubit.get(context);
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.minWidth >= 900)
              return Scaffold(
                backgroundColor: Colors.grey[200],
                body: Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: Percent.widgetHorizontalPosition(
                          widthChild: constraints.minWidth,
                          ratio: 10,
                          widthParent: constraints.minWidth,
                        ).abs().round() -
                        320,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: double.infinity,
                      ),
                      Card(
                        elevation: 10,
                        child: Container(
                          width: 400,
                          height: 360,
                          padding: EdgeInsetsDirectional.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                DefaultTextFormFieldWeb(
                                  hint: 'البريد الأكترونى أو الهاتف',
                                  controller: emailController,
                                  textInputType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                DefaultTextFormFieldWeb(
                                  hint: 'كلمة السر',
                                  controller: passwordController,
                                  textInputType: TextInputType.visiblePassword,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                DefaultButtonWeb(
                                  onPressed: () {
                                    loginCubit.loginWithEmail(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    );
                                  },
                                  text: 'تسجيل الدخول',
                                  height: 45,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'هل نسيت كلمة السر؟',
                                    style: TextStyle(
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 1,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                DefaultButtonWeb(
                                  onPressed: () {},
                                  text: 'إنشاء حساب جديد',
                                  height: 45,
                                  width: 140,
                                  color: color2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 30,
                                ),
                                Text(
                                  'facebook',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 58,
                                    letterSpacing: -0.8,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'يمنحك فيسبوك إمكانية التواصل مع الأشخاص \nومشاركة ماتريد معهم',
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            else
              return Scaffold(
                backgroundColor: Colors.grey[200],
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 30,
                      ),
                      Text(
                        'facebook',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 58,
                          letterSpacing: -0.8,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'يمنحك فيسبوك إمكانية التواصل مع الأشخاص \nومشاركة ماتريد معهم',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Card(
                        elevation: 10,
                        child: Container(
                          width: 400,
                          height: 360,
                          padding: EdgeInsetsDirectional.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              DefaultTextFormFieldWeb(
                                hint: 'البريد الأكترونى أو الهاتف',
                                controller: emailController,
                                textInputType: TextInputType.emailAddress,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              DefaultTextFormFieldWeb(
                                hint: 'كلمة السر',
                                controller: passwordController,
                                textInputType: TextInputType.visiblePassword,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              DefaultButtonWeb(
                                onPressed: () {
                                  loginCubit.loginWithEmail(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                                },
                                text: 'تسجيل الدخول',
                                height: 45,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'هل نسيت كلمة السر؟',
                                  style: TextStyle(
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 1,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              DefaultButtonWeb(
                                onPressed: () {},
                                text: 'إنشاء حساب جديد',
                                height: 45,
                                width: 140,
                                color: color2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'لفرق موسيقية أو مشاهير أو أنشطة تجارية',
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'إنشاء صفحة',
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 105,
                      ),
                      Container(
                        width: double.infinity,
                        height: 250,
                        padding: EdgeInsetsDirectional.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        clipBehavior: Clip.antiAlias,
                      ),
                    ],
                  ),
                ),
              );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    scrollController.dispose();
  }
}
