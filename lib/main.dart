import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:facebook/layout/home/layout_cubit/layout_cubit.dart';
import 'package:facebook/modul/login/login_screen.dart';
import 'package:facebook/shared/components/bloc_observer.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/theme.dart';
import 'package:facebook/web/modul/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layout/home/layout_cubit/layout_states.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => LoginCubit()),
        BlocProvider(create: (BuildContext context) => LayoutCubit()),
      ],
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