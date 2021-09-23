import 'dart:math';
import 'package:animations/animations.dart';
import 'package:facebook/layout/home/layout_cubit/layout_cubit.dart';
import 'package:facebook/layout/home/layout_cubit/layout_states.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/shared/components/component.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stack_percentage/stack_percentage.dart';

class HomePageScreen extends StatelessWidget {


  final ItemScrollController itemScrollController = ItemScrollController();

  Future moveToIndex(int index)async{
    itemScrollController.jumpTo(index: index);
  }

  List<Widget> componentsPost({
    bool isCovered = false,
    required LocalData postData,
}){
    return [
      MoreOptionPost(postData: postData,isOpenedContainer: true,),
      RowReactions( postData: postData,),
      RowButtons(),
      //first image
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${postData.post_image}',
          ),
          fit: isCovered? BoxFit.cover : null,
        ),
      ),
      RowReactions( postData: postData,),
      RowButtons(),
      // second image
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${postData.two_post_image}',
          ),
          fit: isCovered? BoxFit.cover : null,
        ),
      ),
      RowReactions( postData: postData,),
      RowButtons(),
      // third image
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${postData.three_post_image}',
          ),
          fit: isCovered? BoxFit.cover : null,
        ),
      ),
      RowReactions( postData: postData,),
      RowButtons(),
      // four image
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${postData.four_post_image}',
          ),
          fit: isCovered? BoxFit.cover : null,
        ),
      ),
      RowReactions( postData: postData,),
      RowButtons(),
      // five image
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${postData.five_post_image}',
          ),
          fit: isCovered? BoxFit.cover : null,
        ),
      ),
      RowReactions( postData: postData,),
      RowButtons(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    editStatusBar(color: Colors.white , iconColor: Brightness.dark);
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List<LocalData> users = LayoutCubit.get(context).persons;
        List<LocalData> posts = LayoutCubit.get(context).posts;
        return Container(
          color: Colors.grey[400],
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                Container(
                  height: 130,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          top: 20,
                          start: 10,
                          end: 10,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsetsDirectional.only(
                                  top: 1.5,
                                ),
                                height: 38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.2,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 20,
                                  ),
                                  child: const Text(
                                    'بم تفكر؟',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 19,
                              backgroundColor: Colors.blue,
                              backgroundImage: NetworkImage(
                                '${users[0].url}',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'غرفة',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Icon(
                                  Icons.video_call,
                                  color: Colors.deepPurpleAccent,
                                  size: 22,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'صورة',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Icon(
                                  CustomIcons.gallery,
                                  color: Colors.lightGreen,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'بث مباشر',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Icon(
                                  Icons.missed_video_call,
                                  color: Colors.pinkAccent,
                                  size: 22,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 200,
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.only(
                    end: 15,
                    top: 10,
                    bottom: 10,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Row(
                      children: [
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: users.length,
                          itemBuilder: (context, index) => Container(
                            width: 115,
                            height: double.infinity,
                            child: Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: [
                                Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                            image: NetworkImage(
                                                '${users[index].story}'),
                                            fit: BoxFit.cover,
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Align(
                                    alignment: AlignmentDirectional.topEnd,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue,
                                        border: Border.all(
                                          color: primaryColor,
                                          width: 2.3,
                                        ),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              '${users[index].url}',
                                            ),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    '${users[index].name}',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 115,
                          height: double.infinity,
                          child: Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg'),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional.bottomCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            'إنشاء قصة',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              PositionedDirectional(
                                top: Percent.widgetVerticalPosition(
                                  ratio: 60,
                                  heightChild: 40,
                                  heightParent: 200,
                                ),
                                start: Percent.widgetHorizontalPosition(
                                  ratio: 50,
                                  widthChild: 40,
                                  widthParent: 115,
                                ),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.3,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsetsDirectional.only(
                        top: 15,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) => buildItemPost(
                        itemScrollController: itemScrollController,
                        moveToIndex: moveToIndex,
                        postData: posts[index],
                        componentsPost: componentsPost,
                      ),
                      separatorBuilder: (_, index) => SizedBox(
                        height: 15,
                      ),
                      itemCount: posts.length,
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

Widget buildItemPost({
  required LocalData postData,
  moveToIndex,
  itemScrollController,
  componentsPost,
}) =>
    Container(
      color: Colors.white,
      child: Wrap(
        alignment: WrapAlignment.end,
        children: [
          MoreOptionPost(
            postData: postData,
          ),
          selectDisplayPost(
            postData: postData,
            moveToIndex: moveToIndex,
            itemScrollController: itemScrollController,
            componentsPost: componentsPost,
          ),
          ReactPost(post: postData),
        ],
      ),
    );

Widget selectDisplayPost({
  required LocalData postData,
  moveToIndex,
  componentsPost,
  itemScrollController,
}) {
  List<Widget> selectItem = componentsPost(
    isCovered: true,
    postData: postData,
  );
  switch (CounterImages(postData: postData)) {
    case 1:
      return OpenContainer(
        transitionType: ContainerTransitionType.fadeThrough,
        transitionDuration: Duration(seconds: 1),
        openBuilder: (BuildContext context,
            void Function({Object? returnValue}) action) {
          return Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(
                        image: NetworkImage(
                          '${postData.post_image}',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${postData.post}',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${postData.date}',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RowReactions(
                        postData: postData,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      RowButtons(
                        background: Colors.black,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        closedBuilder: (BuildContext context, void Function() action) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(top: 10),
            child: Image(
              image: NetworkImage(
                '${postData.post_image}',
              ),
            ),
          );
        },
      );
    case 2:
      return Container(
        height: 350,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: OpenContainer(
                transitionDuration: Duration(seconds: 1),
                transitionType: ContainerTransitionType.fadeThrough,
                openBuilder: (BuildContext context,
                    void Function({Object? returnValue}) action) {
                  moveToIndex(0).catchError((onError) {});
                  return Container(
                    color: Colors.white,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: ScrollablePositionedList.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 9,
                          itemScrollController: itemScrollController,
                          itemBuilder: (context, index) {
                            return selectItem[index];
                          },
                        ),
                      ),
                    ),
                  );
                },
                closedBuilder: (BuildContext context, void Function() action) {
                  return selectItem[3];
                },
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Expanded(
              child: OpenContainer(
                transitionDuration: Duration(seconds: 1),
                transitionType: ContainerTransitionType.fadeThrough,
                openBuilder: (BuildContext context,
                    void Function({Object? returnValue}) action) {
                  moveToIndex(4).catchError((onError) {});
                  return Container(
                    color: Colors.white,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: ScrollablePositionedList.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 9,
                          itemScrollController: itemScrollController,
                          itemBuilder: (context, index) {
                            return selectItem[index];
                          },
                        ),
                      ),
                    ),
                  );
                },
                closedBuilder: (BuildContext context, void Function() action) {
                  return selectItem[6];
                },
              ),
            ),
          ],
        ),
      );
    case 3:
      return Container(
        height: 350,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: OpenContainer(
                transitionDuration: Duration(seconds: 1),
                transitionType: ContainerTransitionType.fadeThrough,
                openBuilder: (BuildContext context,
                    void Function({Object? returnValue}) action) {
                  moveToIndex(0).catchError((onError) {});
                  return Container(
                    color: Colors.white,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: ScrollablePositionedList.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 12,
                          itemScrollController: itemScrollController,
                          itemBuilder: (context, index) {
                            return selectItem[index];
                          },
                        ),
                      ),
                    ),
                  );
                },
                closedBuilder: (BuildContext context, void Function() action) {
                  return selectItem[3];
                },
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: OpenContainer(
                      transitionDuration: Duration(seconds: 1),
                      transitionType: ContainerTransitionType.fadeThrough,
                      openBuilder: (BuildContext context,
                          void Function({Object? returnValue}) action) {
                        moveToIndex(4).catchError((onError) {});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 12,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context, index) {
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder:
                          (BuildContext context, void Function() action) {
                        return selectItem[6];
                      },
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Expanded(
                    flex: 1,
                    child: OpenContainer(
                      transitionDuration: Duration(seconds: 1),
                      transitionType: ContainerTransitionType.fadeThrough,
                      openBuilder: (BuildContext context,
                          void Function({Object? returnValue}) action) {
                        moveToIndex(7).catchError((onError) {});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 12,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context, index) {
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder:
                          (BuildContext context, void Function() action) {
                        return selectItem[9];
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    case 4:
      bool randomBool = Random.secure().nextBool();
      return randomBool
          ? Container(
              height: 350,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: OpenContainer(
                      transitionDuration: Duration(seconds: 1),
                      transitionType: ContainerTransitionType.fadeThrough,
                      openBuilder: (BuildContext context,
                          void Function({Object? returnValue}) action) {
                        moveToIndex(0).catchError((onError) {});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 15,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context, index) {
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder:
                          (BuildContext context, void Function() action) {
                        return selectItem[3];
                      },
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: OpenContainer(
                            transitionDuration: Duration(seconds: 1),
                            transitionType: ContainerTransitionType.fadeThrough,
                            openBuilder: (BuildContext context,
                                void Function({Object? returnValue}) action) {
                              moveToIndex(4).catchError((onError) {});
                              return Container(
                                color: Colors.white,
                                child: SafeArea(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 10),
                                    child: ScrollablePositionedList.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 15,
                                      itemScrollController:
                                          itemScrollController,
                                      itemBuilder: (context, index) {
                                        return selectItem[index];
                                      },
                                    ),
                                  ),
                                ),
                              );
                            },
                            closedBuilder:
                                (BuildContext context, void Function() action) {
                              return selectItem[6];
                            },
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Expanded(
                          flex: 1,
                          child: OpenContainer(
                            transitionDuration: Duration(seconds: 1),
                            transitionType: ContainerTransitionType.fadeThrough,
                            openBuilder: (BuildContext context,
                                void Function({Object? returnValue}) action) {
                              moveToIndex(7).catchError((onError) {});
                              return Container(
                                color: Colors.white,
                                child: SafeArea(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 10),
                                    child: ScrollablePositionedList.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 15,
                                      itemScrollController:
                                          itemScrollController,
                                      itemBuilder: (context, index) {
                                        return selectItem[index];
                                      },
                                    ),
                                  ),
                                ),
                              );
                            },
                            closedBuilder:
                                (BuildContext context, void Function() action) {
                              return selectItem[9];
                            },
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Expanded(
                          flex: 1,
                          child: OpenContainer(
                            transitionDuration: Duration(seconds: 1),
                            transitionType: ContainerTransitionType.fadeThrough,
                            openBuilder: (BuildContext context,
                                void Function({Object? returnValue}) action) {
                              moveToIndex(10).catchError((onError) {});
                              return Container(
                                color: Colors.white,
                                child: SafeArea(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 10),
                                    child: ScrollablePositionedList.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 15,
                                      itemScrollController:
                                          itemScrollController,
                                      itemBuilder: (context, index) {
                                        return selectItem[index];
                                      },
                                    ),
                                  ),
                                ),
                              );
                            },
                            closedBuilder:
                                (BuildContext context, void Function() action) {
                              return selectItem[12];
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Container(
              height: 350,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: OpenContainer(
                              transitionDuration: Duration(seconds: 1),
                              transitionType:
                                  ContainerTransitionType.fadeThrough,
                              openBuilder: (BuildContext context,
                                  void Function({Object? returnValue}) action) {
                                moveToIndex(0).catchError((onError) {});
                                return Container(
                                  color: Colors.white,
                                  child: SafeArea(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          top: 10),
                                      child: ScrollablePositionedList.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: 15,
                                        itemScrollController:
                                            itemScrollController,
                                        itemBuilder: (context, index) {
                                          return selectItem[index];
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                              closedBuilder: (BuildContext context,
                                  void Function() action) {
                                return selectItem[3];
                              },
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: OpenContainer(
                              transitionDuration: Duration(seconds: 1),
                              transitionType:
                                  ContainerTransitionType.fadeThrough,
                              openBuilder: (BuildContext context,
                                  void Function({Object? returnValue}) action) {
                                moveToIndex(4).catchError((onError) {});
                                return Container(
                                  color: Colors.white,
                                  child: SafeArea(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          top: 10),
                                      child: ScrollablePositionedList.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: 15,
                                        itemScrollController:
                                            itemScrollController,
                                        itemBuilder: (context, index) {
                                          return selectItem[index];
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                              closedBuilder: (BuildContext context,
                                  void Function() action) {
                                return selectItem[6];
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: OpenContainer(
                              transitionDuration: Duration(seconds: 1),
                              transitionType:
                                  ContainerTransitionType.fadeThrough,
                              openBuilder: (BuildContext context,
                                  void Function({Object? returnValue}) action) {
                                moveToIndex(7).catchError((onError) {});
                                return Container(
                                  color: Colors.white,
                                  child: SafeArea(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          top: 10),
                                      child: ScrollablePositionedList.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: 15,
                                        itemScrollController:
                                            itemScrollController,
                                        itemBuilder: (context, index) {
                                          return selectItem[index];
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                              closedBuilder: (BuildContext context,
                                  void Function() action) {
                                return selectItem[9];
                              },
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: OpenContainer(
                              transitionDuration: Duration(seconds: 1),
                              transitionType:
                                  ContainerTransitionType.fadeThrough,
                              openBuilder: (BuildContext context,
                                  void Function({Object? returnValue}) action) {
                                moveToIndex(10).catchError((onError) {});
                                return Container(
                                  color: Colors.white,
                                  child: SafeArea(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          top: 10),
                                      child: ScrollablePositionedList.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: 15,
                                        itemScrollController:
                                            itemScrollController,
                                        itemBuilder: (context, index) {
                                          return selectItem[index];
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                              closedBuilder: (BuildContext context,
                                  void Function() action) {
                                return selectItem[12];
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
    default:
      return Container(
        height: 350,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: OpenContainer(
                      transitionDuration: Duration(seconds: 1),
                      transitionType: ContainerTransitionType.fadeThrough,
                      openBuilder: (BuildContext context,
                          void Function({Object? returnValue}) action) {
                        moveToIndex(0).catchError((onError) {});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 18,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context, index) {
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder:
                          (BuildContext context, void Function() action) {
                        return selectItem[3];
                      },
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: OpenContainer(
                      transitionDuration: Duration(seconds: 1),
                      transitionType: ContainerTransitionType.fadeThrough,
                      openBuilder: (BuildContext context,
                          void Function({Object? returnValue}) action) {
                        moveToIndex(4).catchError((onError) {});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 18,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context, index) {
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder:
                          (BuildContext context, void Function() action) {
                        return selectItem[6];
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: OpenContainer(
                      transitionDuration: Duration(seconds: 1),
                      transitionType: ContainerTransitionType.fadeThrough,
                      openBuilder: (BuildContext context,
                          void Function({Object? returnValue}) action) {
                        moveToIndex(7).catchError((onError) {});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 18,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context, index) {
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder:
                          (BuildContext context, void Function() action) {
                        return selectItem[9];
                      },
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: OpenContainer(
                      transitionDuration: Duration(seconds: 1),
                      transitionType: ContainerTransitionType.fadeThrough,
                      openBuilder: (BuildContext context,
                          void Function({Object? returnValue}) action) {
                        moveToIndex(10).catchError((onError) {});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 18,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context, index) {
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder:
                          (BuildContext context, void Function() action) {
                        return selectItem[12];
                      },
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: OpenContainer(
                      transitionDuration: Duration(seconds: 1),
                      transitionType: ContainerTransitionType.fadeThrough,
                      openBuilder: (BuildContext context,
                          void Function({Object? returnValue}) action) {
                        moveToIndex(13).catchError((onError) {});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 18,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context, index) {
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder:
                          (BuildContext context, void Function() action) {
                        return selectItem[15];
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}