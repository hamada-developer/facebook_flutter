import 'dart:io';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:facebook/layout/home/home_cubit/home_cubit.dart';
import 'package:facebook/modul/login/login_screen.dart';
import 'package:facebook/shared/components/bloc_observer.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:facebook/shared/style/icon_broken.dart';
import 'package:facebook/shared/style/theme.dart';
import 'package:facebook/web/modul/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modul/home_page/home_page_screen.dart';
import 'modul/login/login_cubit/login_cubit.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  editStatusBar();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        themeMode: ThemeMode.light,
        home: ConditionalBuilder(
          condition: kIsWeb,
          builder: (context) =>LoginScreenWeb(),
          fallback: (context) =>LoginScreen(),
        ),
      ),
    );
  }
}
