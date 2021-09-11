import 'package:facebook/layout/home/home_cubit/home_cubit.dart';
import 'package:facebook/modul/login/login_screen.dart';
import 'package:facebook/shared/components/bloc_observer.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:facebook/shared/style/icon_broken.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modul/home_page/home_page_screen.dart';
import 'modul/login/login_cubit/login_cubit.dart';

main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  editStatusBar();
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  TabController? tabController;
  ScrollController? scrollController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2, initialIndex: 0);
    scrollController = ScrollController();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => LoginCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
  void scaffold(){
    new Scaffold(
      body: new NestedScrollView(
        floatHeaderSlivers: true,
        controller: scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              title: new Text('title'),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: new TabBar(
                tabs: <Tab>[
                  new Tab(text: "STATISTICS"),
                  new Tab(text: "HISTORY"),
                ],
                controller: tabController,
              ),
            ),
          ];
        },
        body: new TabBarView(
          children: <Widget>[
            new Center(child: TextButton(onPressed: (){},child: Text('helloe'),)),
            new Center(child: TextButton(onPressed: (){},child: Text('helloe'),)),
          ],
          controller: tabController,
        ),
      ),
    );
  }
}
