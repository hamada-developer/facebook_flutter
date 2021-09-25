import 'package:facebook/layout/home/layout_cubit/layout_cubit.dart';
import 'package:facebook/layout/home/layout_cubit/layout_states.dart';
import 'package:facebook/shared/components/component.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';


import 'custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(kToolbarHeight);
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (_, state){},
      builder: (_, state){
        var mediaQuery = MediaQuery.of(context);
        var layoutCubit = LayoutCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppBar(
            height: 100,
            child: Column(
              children: [
                SizedBox(
                  height: mediaQuery.padding.top,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(
                          top: 8.0,
                          start: 8.0,
                          bottom: 5.0,
                        ),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20.0,),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'بحث',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      child: IconButton(
                        onPressed: (){
                          navigateBack(context);
                        },
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.arrow_forward_rounded,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey[400],
                  height: 1,
                  width: double.infinity,
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              end: 20,
              bottom: 20,
            ),
            child: Column(
              children: [
                Container(
                  height: 280,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  child: Image(
                                    image: NetworkImage(
                                      '${layoutCubit.posts[2].three_post_image}',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                PositionedDirectional(
                                  top: 150,
                                  start: 10,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.grey[200],
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.camera_alt_rounded,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                          ),
                        ],
                      ),
                      Positioned(
                        top: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 170,
                                  padding: EdgeInsetsDirectional.all(5.0),
                                  width: mediaQuery.size.width - 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 170,
                                        width: mediaQuery.size.width - 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              '${layoutCubit.posts[0].url}',
                                            ),
                                          ),
                                          shape: BoxShape.circle,

                                        ),
                                      ),
                                      PositionedDirectional(
                                        top: 110,
                                        start: mediaQuery.size.width * 0.21,
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.grey[200],
                                          child: IconButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.camera_alt_rounded,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '${layoutCubit.posts[0].name}',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Specialist software engineer',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[300],
                        ),
                        height: 33,
                        child: Icon(
                          Icons.more_horiz_rounded,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[300],
                          ),
                          height: 33,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('تعديل الملف الشخصى'),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.edit,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: primaryColor,
                          ),
                          height: 33,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'إضافة إلى القصة',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.add_circle_outlined,
                                size: 18,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'مدينة السادات',
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'درس فى  ',
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset(
                      'assets/icons/mortarboard.svg',
                      width: 20,
                      height: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'الفيوم',
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'يقيم فى',
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset(
                      'assets/icons/home_pro.svg',
                      width: 20,
                      height: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'الفيوم',
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'من  ',
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset(
                      'assets/icons/maps.svg',
                      width: 20,
                      height: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'أعزب  ',
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset(
                      'assets/icons/heart.svg',
                      width: 20,
                      height: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'نوفمبر 2014',
                    ),
                    Text(
                      'تاريخ الانضمام',
                    ),
                    SvgPicture.asset(
                      'assets/icons/mortarboard.svg',
                      width: 20,
                      height: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
