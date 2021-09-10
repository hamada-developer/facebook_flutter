import 'package:facebook/modul/home/home_cubit/home_states.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:facebook/shared/style/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_cubit/home_cubit.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 6, initialIndex: 0);
  }

  final List<Widget> icons = [
    Icon(
      Icons.home_rounded,
      size: 35,
    ),
    Icon(
      Icons.home_rounded,
      size: 35,
    ),
    Icon(
      Icons.home_rounded,
      size: 35,
    ),
    Icon(
      Icons.ondemand_video_rounded,
      size: 28,
    ),
    Container(
      height: 28,
      width: 28,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(25)),
      child: SvgPicture.asset(
        'assets/icons/account_group.svg',
        color: Colors.blue,
      ),
    ),
    Icon(
      Icons.home_rounded,
      size: 28,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    editStatusBar(color: Colors.white, icon: Brightness.dark);
    return BlocProvider(
      create: (context) {
        return HomeCubit();
      },
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CustomIcons.mess_icon,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        IconBroken.Search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    end: 20.0,
                    top: 8.0,
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
              bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                controller: tabController,
                labelColor: Colors.blue,
                labelPadding: EdgeInsetsDirectional.all(12),
                tabs: [
                  Icon(
                    Icons.menu,
                    size: 26,
                  ),
                  Icon(
                    CustomIcons.bell_noti,
                    size: 22,
                  ),
                  Icon(
                    CustomIcons.store,
                    size: 22,
                  ),
                  Icon(
                    CustomIcons.facebook,
                    size: 22,
                  ),
                  Icon(
                    CustomIcons.group,
                    size: 22,
                  ),
                  Icon(
                    IconBroken.Home,
                    size: 26,
                  ),
                ],
                onTap: (value) {},
              ),
            ),
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
                TextButton(
                  onPressed: () {},
                  child: Text('hello'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
