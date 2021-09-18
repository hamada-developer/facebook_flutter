import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:facebook/layout/home/home_screen.dart';
import 'package:facebook/modul/login/login_cubit/login_cubit.dart';
import 'package:facebook/modul/login/login_cubit/login_states.dart';
import 'package:facebook/modul/register/register_screen_1.dart';
import 'package:facebook/shared/components/component.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginSuccessState)
          navigateAndFinish(context: context, widget: HomeScreen());
      },
      builder: (context, state) {
        var loginCubit = LoginCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                  ),
                  const Image(
                    image: AssetImage(
                      'assets/images/login.jpeg',
                    ),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () => print('المزيد'),
                            child: const Text('...المزيد'),
                          ),
                          InkWell(
                            onTap: () => print('English'),
                            child: const Text('English'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () => print('Francais'),
                            child: const Text('Francais'),
                          ),
                        ],
                      ),
                      const SizedBox(
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
                                icon: loginCubit.isHide
                                    ? Icon(
                                        IconBroken.Show,
                                      )
                                    : Icon(
                                        IconBroken.Hide,
                                      ),
                              ),
                              isHide: loginCubit.isHide,
                            ),
                            ConditionalBuilder(
                              condition: state is! LoginLoadingState,
                              builder: (context) => DefaultButton(
                                text: 'تسجيل الدخول',
                                onPressed: () => loginCubit.loginWithEmail(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              ),
                              fallback: (context) => const Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: const CircularProgressIndicator(),
                              ),
                            ),
                            TextButton(
                              onPressed: () => print('هل نسيت كلمة السر؟'),
                              child: const Text(
                                'هل نسيت كلمة السر؟',
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
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
                                const Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: const Text(
                                    'أو',
                                    style: const TextStyle(
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
                            const SizedBox(
                              height: 60.0,
                            ),
                            DefaultButton(
                              onPressed: () => navigateTo(
                                context: context,
                                widget: const RegisterScreenOne(),
                              ),
                              text: 'أنشاء حساب جديد على فيسبوك',
                              background: greenButton,
                              paddingHorizontal: 60,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
