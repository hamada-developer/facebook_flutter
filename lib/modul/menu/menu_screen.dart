import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:facebook/layout/home/layout_cubit/layout_cubit.dart';
import 'package:facebook/layout/home/layout_cubit/layout_states.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/menu_,model.dart';
import 'package:facebook/shared/style/icon_broken.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stack_percentage/stack_percentage.dart';

class MenuScreen extends StatelessWidget {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();


  final List<Widget> widgets = [
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 55.0,
        width: double.infinity,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Spacer(),
              Text(
                'مركز المساعدة',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/help_1.svg',
                  color: Color(0xff77898e),
                  width: 25,
                  height: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 55.0,
        width: double.infinity,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.grey,
            onTap: () {},
            child: Row(
              children: [
                Spacer(),
                Text(
                  'البريد الوارد للدعم',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/mail.svg',
                    width: 25,
                    height: 25,
                    color: Color(0xff77898e),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 55.0,
        width: double.infinity,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.grey,
            onTap: () {},
            child: Row(
              children: [
                Spacer(),
                Text(
                  'الأبلاغ عن المشكلة',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/warning.svg',
                    width: 25,
                    height: 25,
                    color: Color(0xff77898e),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 55.0,
        width: double.infinity,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {},
          child: Row(
            children: [
              Spacer(),
              Text(
                'السلامة',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/shield.svg',
                  width: 25,
                  height: 25,
                  color: Color(0xff77898e),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 55.0,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {},
          child: Row(
            children: [
              Spacer(),
              Text(
                'الشروط والسياسات',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/book.svg',
                  width: 25,
                  height: 25,
                  color: Color(0xff77898e),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  final List<MenuModel> items = [
    MenuModel('assets/icons/backup.svg', 'الذكريات'),
    MenuModel('assets/icons/video.svg', 'Watch'),
    MenuModel('assets/icons/bookmark.svg', 'العناصر المحفوظة'),
    MenuModel(
      'https://flutter.dev/assets/images/homepage/carousel/slide_4-layer_1.png',
      'Welcome',
    ),
    MenuModel('assets/icons/flag.svg', 'الصفحات'),
    MenuModel('assets/icons/portfolio.svg', 'الوظائف'),
    MenuModel('assets/icons/online-shopping.svg', 'Marketplace'),
    MenuModel('assets/icons/group _2.svg', 'المجموعات'),
    MenuModel('assets/icons/human.svg', 'الاصدقاء'),
    MenuModel('assets/icons/event.svg', 'المناسبات'),
    MenuModel('assets/icons/briefcase.svg', 'الوظائف'),
    MenuModel('assets/icons/controller.svg', 'الالعاب'),
    MenuModel('assets/icons/stopwatch.svg', 'الذكريات'),
  ];

  Future moveToIndex(int index )async{
    itemScrollController.scrollTo(index: index , duration: Duration(milliseconds: 100));
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (_, state) {},
      builder: (_, state) {
        List<LocalData> postData = LayoutCubit.get(context).posts;
        LayoutCubit layoutCubit = LayoutCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: SingleChildScrollView(
            controller: layoutCubit.scrollController,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      IconBroken.Search,
                    ),
                    Spacer(),
                    Text(
                      'القائمة',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${postData[0].name}',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'عرض ملفك الشخصى',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                '${postData[0].url}',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
                StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  itemCount: 12,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 4,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadowColor: Colors.grey[500],
                      child: index == 3
                          ? Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.freecodecamp.org/news/content/images/2021/08/Flutter-logo.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        '${items[index].icon}',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: Percent.borderVerticalPosition(
                                      ratio: 52, heightParent: 300),
                                  right: 15,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text(
                                        'Made by ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Image(
                                        image: AssetImage(
                                          'assets/images/festisite_google.png',
                                        ),
                                        width: 40,
                                        height: 18,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(
                                    items[index].icon,
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text('${items[index].title}'),
                                ],
                              ),
                            ),
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return new StaggeredTile.count(2, index == 3 ? 3.5 : 1);
                  },
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 4.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    elevation: 0.0,
                    onPressed: () {},
                    child: Text(
                      'عرض المزيد',
                    ),
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                ExpansionTileCard(
                  baseColor: Colors.grey[100],
                  expandedColor: Colors.grey[100],
                  elevation: 0.0,
                  leading: Icon(
                    layoutCubit.isOpenedHelp
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: Colors.black,
                  ),
                  title: Row(
                    children: [
                      Spacer(),
                      Text(
                        'المساعدة والدعم',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  contentPadding: EdgeInsets.zero,
                  onExpansionChanged: (value){
                    layoutCubit.changeExpansionHelp(value );

                  },
                  trailing: SvgPicture.asset(
                    'assets/icons/question _2.svg',
                    width: 25,
                    height: 25,
                  ),
                  initialPadding: EdgeInsets.zero,
                  finalPadding: EdgeInsets.zero,
                  expandedTextColor: Colors.black,
                ),
                ConditionalBuilder(
                  condition: layoutCubit.isOpenedHelp,
                  builder: (_){
                    return Container(
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: widgets.length,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context , index){
                          return widgets[index];
                        },
                      ),
                    );
                  },
                  fallback: null,
                ),

                ExpansionTileCard(
                  baseColor: Colors.grey[100],
                  expandedColor: Colors.grey[100],
                  elevation: 0.0,
                  leading: Icon(
                    layoutCubit.isOpenedSetting
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: Colors.black,
                  ),
                  title: Row(
                    children: [
                      Spacer(),
                      Text(
                        'الإعدادات والخصوصية',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  contentPadding: EdgeInsets.zero,
                  onExpansionChanged: (value){
                    layoutCubit.changeExpansionSetting(value);

                  },
                  trailing: SvgPicture.asset(
                    'assets/icons/setting.svg',
                    width: 25,
                    height: 25,
                  ),
                  initialPadding: EdgeInsets.zero,
                  finalPadding: EdgeInsets.zero,
                  expandedTextColor: Colors.black,
                ),
                ConditionalBuilder(
                  condition: layoutCubit.isOpenedSetting,
                  builder: (_){
                    return Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        height: 55.0,
                        child: InkWell(
                          splashColor: Colors.grey,
                          onTap: () {},
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                'الأعدادات ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  'assets/icons/user.svg',
                                  width: 25,
                                  height: 25,
                                  color: Color(0xff77898e),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  fallback: null,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


Widget w(){
  return Column(
    children: [
      Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey[300],
      ),
      Container(
        height: 45.0,
        child: Row(
          children: [
            Spacer(),
            Text(
              'الإعدادات والخصوصية',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        child: MaterialButton(
          elevation: 0.0,
          onPressed: () {},
          child: Text(
            'تسجيل الخروج',
          ),
          color: Colors.grey[200],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)),
        ),
      ),
    ],
  );
}