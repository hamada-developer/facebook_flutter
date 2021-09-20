import 'package:facebook/layout/home/layout_cubit/layout_cubit.dart';
import 'package:facebook/layout/home/layout_cubit/layout_states.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:facebook/shared/style/icon_broken.dart';
import 'package:facebook/web/modul/home_page/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLayout extends StatefulWidget {
  @override
  _AppLayoutState createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> with SingleTickerProviderStateMixin {
  TabController? tabController;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 6, initialIndex: 5);
    _scrollController =ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return LayoutCubit();
      },
      child: BlocConsumer<LayoutCubit, LayoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: NestedScrollView(
              controller: _scrollController,
              floatHeaderSlivers: true,
              headerSliverBuilder: ( context,  innerBoxIsScrolled){
                return [
                  SliverAppBar(
                    systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: Colors.white,
                      statusBarIconBrightness: Brightness.dark,
                    ),
                    backwardsCompatibility: false,
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CustomIcons.mess_icon,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14.0,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              IconBroken.Search,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          end: 20.0,
                        ),
                        child: Center(
                          child: Text(
                            'facebook',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 28,
                              letterSpacing: -0.8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                    pinned: true,
                    floating: true,
                    forceElevated: innerBoxIsScrolled,
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    bottom: TabBar(
                      unselectedLabelColor: Colors.grey,
                      controller: tabController,
                      labelColor: Colors.blue,
                      labelPadding: EdgeInsets.symmetric(horizontal: 0.0),
                      tabs: [
                        Tab(
                          child: Icon(
                              Icons.menu,
                          ),
                        ),
                        Tab(
                          child: Icon(
                              CustomIcons.bell_noti,
                          ),
                        ),
                        Tab(
                          child: Icon(
                            CustomIcons.store,
                          ),
                        ),
                        Tab(
                          child: Icon(
                              CustomIcons.facebook,
                          ),
                        ),
                        Tab(
                          child: Icon(
                            CustomIcons.group,
                          ),
                        ),
                        Tab(
                          child: Icon(
                              IconBroken.Home,
                          ),
                        ),
                      ],
                      onTap: (value) {},
                    ),
                  ),
                ];
              },
              body: TabBarView(
                controller: tabController,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('hello'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('hello'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('hello'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('hello'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('hello'),
                  ),
                  HomePageScreenWeb(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
