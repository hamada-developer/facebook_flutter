import 'package:animations/animations.dart';
import 'package:facebook/layout/home/home_cubit/home_cubit.dart';
import 'package:facebook/layout/home/home_cubit/home_states.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/modul/posts/post_five.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stack_percentage/stack_percentage.dart';
import 'package:page_transition/page_transition.dart';

class HomePageScreen extends StatelessWidget {


  final ItemScrollController itemScrollController = ItemScrollController();

  Future moveToIndex(int index)async{
    itemScrollController.jumpTo(index: index);
  }


   List<Widget> returnWidgets({
     bool isCovered = false,
     required LocalData usersFour,
}){
    return [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            IconButton(
              padding: EdgeInsetsDirectional.zero,
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz_rounded,
                color: Colors.grey[700],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${usersFour.name}',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.public_rounded,
                          color: Colors.grey[700],
                          size: 16,
                        ),
                      ),
                      Text(
                        '${usersFour.date}',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
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
                          '${usersFour.url}',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Wrap(
              children: [
                Text(
                  '${usersFour.post}',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsetsDirectional.all(15.0),
        child: Row(
          children: [
            Text(
              '${usersFour.share_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${usersFour.comment_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      '${usersFour.like_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 55,
                          height: 20,
                        ),
                        PositionedDirectional(
                          end: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.first_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 16,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.second_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 32,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.thirty_rect}',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مشاركة',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons
                        .arrow_curved_to_the_left_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تعليق',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons.comment_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'أعجبنى',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    CustomIcons.like_svgrepo_com,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${usersFour.post_image}',
          ),
          fit: isCovered? BoxFit.cover : null,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(
              '${usersFour.share_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${usersFour.comment_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      '${usersFour.like_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 55,
                          height: 20,
                        ),
                        PositionedDirectional(
                          end: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.first_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 16,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.second_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 32,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.thirty_rect}',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مشاركة',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons
                        .arrow_curved_to_the_left_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تعليق',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons.comment_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'أعجبنى',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    CustomIcons.like_svgrepo_com,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${usersFour.two_post_image}',
          ),
          fit: isCovered? BoxFit.cover : BoxFit.none,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(
              '${usersFour.share_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${usersFour.comment_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      '${usersFour.like_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 55,
                          height: 20,
                        ),
                        PositionedDirectional(
                          end: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.first_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 16,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.second_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 32,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.thirty_rect}',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مشاركة',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons
                        .arrow_curved_to_the_left_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تعليق',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons.comment_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'أعجبنى',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    CustomIcons.like_svgrepo_com,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${usersFour.three_post_image}',
          ),
          fit: isCovered? BoxFit.cover : BoxFit.none,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(
              '${usersFour.share_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${usersFour.comment_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      '${usersFour.like_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 55,
                          height: 20,
                        ),
                        PositionedDirectional(
                          end: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.first_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 16,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.second_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 32,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.thirty_rect}',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مشاركة',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons
                        .arrow_curved_to_the_left_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تعليق',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons.comment_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'أعجبنى',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    CustomIcons.like_svgrepo_com,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${usersFour.four_post_image}',
          ),
          fit: isCovered? BoxFit.cover : BoxFit.none,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(
              '${usersFour.share_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${usersFour.comment_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      '${usersFour.like_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 55,
                          height: 20,
                        ),
                        PositionedDirectional(
                          end: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.first_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 16,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.second_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 32,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.thirty_rect}',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مشاركة',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons
                        .arrow_curved_to_the_left_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تعليق',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons.comment_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'أعجبنى',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    CustomIcons.like_svgrepo_com,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      // new item
      Container(
        color: Colors.green,
        width: double.infinity,
        height: 600,
        child: Image(
          image: NetworkImage(
            '${usersFour.four_post_image}',
          ),
          fit: isCovered? BoxFit.cover : BoxFit.none,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(
              '${usersFour.share_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${usersFour.comment_count}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      '${usersFour.like_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 55,
                          height: 20,
                        ),
                        PositionedDirectional(
                          end: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.first_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 16,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.second_rect}',
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 32,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: SvgPicture.asset(
                              '${usersFour.thirty_rect}',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مشاركة',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons
                        .arrow_curved_to_the_left_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تعليق',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    CustomIcons.comment_svgrepo_com,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'أعجبنى',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    CustomIcons.like_svgrepo_com,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List<LocalData> users = HomeCubit.get(context).persons;
        List<LocalData> usersFour = HomeCubit.get(context).persons_four;
        List<LocalData> usersTwo = HomeCubit.get(context).person_two;
        List<LocalData> person_three = HomeCubit.get(context).person_three;
        List<LocalData> person_five = HomeCubit.get(context).person_five;
        return Container(
          color: Colors.grey[400],
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
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
                                  child: Text(
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
                        widget(),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsetsDirectional.only(top:15,),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        return itemPost(users[index]);
                        },
                      separatorBuilder: (_, index)=> SizedBox(
                        height: 15,
                      ),
                      itemCount: 2,
                    ),
                    // **posts contain 4 images**
                    ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsetsDirectional.only(top:15,),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index){
                        return fourItemPostFun(
                            moveToIndex: moveToIndex,
                            itemScrollController: itemScrollController,
                            returnWidgets: returnWidgets,
                            users: users,
                            usersFour: usersFour[index]
                        );
                      },
                      separatorBuilder: (_, index) => SizedBox(
                        height: 15,
                      ),
                      itemCount: 2,
                    ),
                    // **posts contain 2 images**
                    ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsetsDirectional.only(top:15,),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) => twoItemPostFun(
                        returnWidgets: returnWidgets,
                        itemScrollController: itemScrollController,
                        moveToIndex: moveToIndex,
                        person_two: usersTwo[index],
                      ),
                      separatorBuilder: (_, index) => SizedBox(
                        height: 15,
                      ),
                      itemCount: 1,
                    ),
                    // **posts contain 4 images part two**
                    ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsetsDirectional.only(top:15,),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) => fourItemPostFun_2(
                        returnWidgets: returnWidgets,
                        itemScrollController: itemScrollController,
                        moveToIndex: moveToIndex,
                        usersFour: usersFour[index],
                      ),
                      separatorBuilder: (_, index) => SizedBox(
                        height: 15,
                      ),
                      itemCount: 1,
                    ),
                    // **posts contain 3 images **
                    ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsetsDirectional.only(top:15,),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) => threeItemPostFun(
                        returnWidgets: returnWidgets,
                        itemScrollController: itemScrollController,
                        moveToIndex: moveToIndex,
                        usersThree: person_three[index],
                      ),
                      separatorBuilder: (_, index) => SizedBox(
                        height: 15,
                      ),
                      itemCount: 1,
                    ),
                    // **posts contain 5 images **
                    ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsetsDirectional.only(top:15,),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) => fiveItemPostFun(
                        returnWidgets: returnWidgets,
                        itemScrollController: itemScrollController,
                        moveToIndex: moveToIndex,
                        usersFive: person_five[index],
                      ),
                      separatorBuilder: (_, index) => SizedBox(
                        height: 15,
                      ),
                      itemCount: 1,
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

Widget widget() => Container(
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
    );

/**
 * posts of type
 */
// this widget contains [one] image
Widget itemPost(LocalData users ) => Container(
      color: Colors.white,
      child: Wrap(
        alignment: WrapAlignment.end,
        children: [
          Container(
            padding: EdgeInsetsDirectional.only(end: 15.0,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsetsDirectional.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.grey[700],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${users.name}',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(
                                  Icons.public_rounded,
                                  color: Colors.grey[700],
                                  size: 16,
                                ),
                              ),
                              Text(
                                '${users.date}',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 15),
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
                                  '${users.url}',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  '${users.post??''}',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          OpenContainer(
            transitionType: ContainerTransitionType.fadeThrough,
            transitionDuration: Duration(seconds: 1),
            openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
              return Container(
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(
                            image: NetworkImage(
                              '${users.post_image}',
                            ),

                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${users.post}',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${users.date}',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '${users.share_count}',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${users.comment_count}',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 20,
                                  child: Wrap(
                                    direction: Axis.horizontal,
                                    alignment: WrapAlignment.end,
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: [
                                      Text(
                                        '${users.like_count}',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Container(
                                            width: 55,
                                            height: 20,
                                          ),
                                          PositionedDirectional(
                                            end: 0,
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white, width: 1.5),
                                                  borderRadius: BorderRadius.circular(18)),
                                              child: SvgPicture.asset(
                                                '${users.first_rect}',
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            end: 16,
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white, width: 1.5),
                                                  borderRadius: BorderRadius.circular(18)),
                                              child: SvgPicture.asset(
                                                '${users.second_rect}',
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            end: 32,
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white, width: 1.5),
                                                  borderRadius: BorderRadius.circular(18)),
                                              child: SvgPicture.asset(
                                                '${users.thirty_rect}',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'مشاركة',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(
                                        CustomIcons
                                            .arrow_curved_to_the_left_svgrepo_com,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'تعليق',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(
                                        CustomIcons.comment_svgrepo_com,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'أعجبنى',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        CustomIcons.like_svgrepo_com,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
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
                    '${users.post_image}',
                  ),
                ),
              );
            },

          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        '${users.share_count}',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${users.comment_count}',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 20,
                          
                          child: Wrap(
                          direction: Axis.horizontal,
                            alignment: WrapAlignment.end,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                              '${users.like_count}',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                              Stack(
                                children: [
                                  Container(
                                    width: 55,
                                    height: 20,
                                  ),
                                   PositionedDirectional(
                                    end: 0,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 1.5),
                                          borderRadius: BorderRadius.circular(18)),
                                      child: SvgPicture.asset(
                                        '${users.first_rect}',
                                      ),
                                    ),
                                  ),
                                  PositionedDirectional(
                                    end: 16,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 1.5),
                                          borderRadius: BorderRadius.circular(18)),
                                      child: SvgPicture.asset(
                                        '${users.second_rect}',
                                      ),
                                    ),
                                  ),
                                  PositionedDirectional(
                                    end: 32,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 1.5),
                                          borderRadius: BorderRadius.circular(18)),
                                      child: SvgPicture.asset(
                                        '${users.thirty_rect}',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'مشاركة',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                CustomIcons
                                    .arrow_curved_to_the_left_svgrepo_com,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'تعليق',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                CustomIcons.comment_svgrepo_com,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'أعجبنى',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                CustomIcons.like_svgrepo_com,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );


// this widget contains [two] image
Widget twoItemPostFun({
  required LocalData person_two,
  required moveToIndex,
  required itemScrollController,
  required returnWidgets,
}) {
  List<Widget> selectItem = returnWidgets(
    isCovered: true,
    usersFour: person_two,
  );
  return Container(
    color: Colors.white,
    child: Wrap(
      alignment: WrapAlignment.end,
      children: [
        Container(
          padding: EdgeInsetsDirectional.only(end: 15.0,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsetsDirectional.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.grey[700],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${person_two.name}',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.public_rounded,
                                color: Colors.grey[700],
                                size: 16,
                              ),
                            ),
                            Text(
                              '${person_two.date}',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 15),
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
                                '${person_two.url}',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                '${person_two.post??''}',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 350,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: OpenContainer(
                  transitionDuration: Duration(seconds: 1),
                  transitionType: ContainerTransitionType.fadeThrough,
                  openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                    moveToIndex(0).catchError((onError){});
                    return Container(
                      color: Colors.white,
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(top: 10),
                          child: ScrollablePositionedList.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 17,
                            itemScrollController: itemScrollController,
                            itemBuilder: (context , index){
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
              SizedBox(
                height: 3,
              ),
              Expanded(
                child: OpenContainer(
                  transitionDuration: Duration(seconds: 1),
                  transitionType: ContainerTransitionType.fadeThrough,
                  openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                    moveToIndex(7).catchError((onError){});
                    return Container(
                      color: Colors.white,
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(top: 10),
                          child: ScrollablePositionedList.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 17,
                            itemScrollController: itemScrollController,
                            itemBuilder: (context , index){
                              return selectItem[index];
                            },
                          ),
                        ),
                      ),
                    );
                  },
                  closedBuilder: (BuildContext context, void Function() action) {
                    return selectItem[12];
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '${person_two.share_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${person_two.comment_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 20,

                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.end,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              '${person_two.like_count}',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 55,
                                  height: 20,
                                ),
                                PositionedDirectional(
                                  end: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${person_two.first_rect}',
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  end: 16,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${person_two.second_rect}',
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  end: 32,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${person_two.thirty_rect}',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'مشاركة',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              CustomIcons
                                  .arrow_curved_to_the_left_svgrepo_com,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تعليق',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              CustomIcons.comment_svgrepo_com,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'أعجبنى',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              CustomIcons.like_svgrepo_com,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


// this widget contains [three] image
Widget threeItemPostFun({
  required moveToIndex,
  required itemScrollController,
  required LocalData usersThree,
  required returnWidgets,
}) {
  List<Widget> selectItem = returnWidgets(
    isCovered: true,
    usersFour: usersThree,
  );
  return Container(
    color: Colors.white,
    child: Wrap(
      alignment: WrapAlignment.end,
      children: [
        Container(
          padding: EdgeInsetsDirectional.only(end: 15.0,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsetsDirectional.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.grey[700],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${usersThree.name}',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.public_rounded,
                                color: Colors.grey[700],
                                size: 16,
                              ),
                            ),
                            Text(
                              '${usersThree.date}',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 15),
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
                                '${usersThree.url}',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                '${usersThree.post??''}',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Container(
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
                  openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                    moveToIndex(0).catchError((onError){});
                    return Container(
                      color: Colors.white,
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(top: 10),
                          child: ScrollablePositionedList.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 24,
                            itemScrollController: itemScrollController,
                            itemBuilder: (context , index){
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
                        openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                          moveToIndex(7).catchError((onError){});
                          return Container(
                            color: Colors.white,
                            child: SafeArea(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(top: 10),
                                child: ScrollablePositionedList.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 24,
                                  itemScrollController: itemScrollController,
                                  itemBuilder: (context , index){
                                    return selectItem[index];
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        closedBuilder: (BuildContext context, void Function() action) {
                          return selectItem[12];
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
                        openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                          moveToIndex(13).catchError((onError){});
                          return Container(
                            color: Colors.white,
                            child: SafeArea(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(top: 10),
                                child: ScrollablePositionedList.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 24,
                                  itemScrollController: itemScrollController,
                                  itemBuilder: (context , index){
                                    return selectItem[index];
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        closedBuilder: (BuildContext context, void Function() action) {
                          return selectItem[18];
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '${usersThree.share_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${usersThree.comment_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 20,
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.end,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              '${usersThree.like_count}',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 55,
                                  height: 20,
                                ),
                                PositionedDirectional(
                                  end: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${usersThree.first_rect}',
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  end: 16,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${usersThree.second_rect}',
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  end: 32,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${usersThree.thirty_rect}',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'مشاركة',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              CustomIcons
                                  .arrow_curved_to_the_left_svgrepo_com,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تعليق',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              CustomIcons.comment_svgrepo_com,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'أعجبنى',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              CustomIcons.like_svgrepo_com,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


// this widget contains [four_1] image
Widget fourItemPostFun({
  required users,
  required moveToIndex,
  required itemScrollController,
  required LocalData usersFour,
  required returnWidgets,
}){
  List<Widget> selectItem = returnWidgets(
    isCovered: true,
    usersFour: usersFour,
  );
  return Container(
  color: Colors.white,
  child: Wrap(
    alignment: WrapAlignment.end,
    children: [
      Container(
        padding: EdgeInsetsDirectional.only(end: 15.0,top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                IconButton(
                  padding: EdgeInsetsDirectional.zero,
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.grey[700],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${usersFour.name}',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.public_rounded,
                              color: Colors.grey[700],
                              size: 16,
                            ),
                          ),
                          Text(
                            '${usersFour.date}',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 15),
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
                              '${usersFour.url}',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '${usersFour.post??''}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      Container(
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
                openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                  moveToIndex(0).catchError((onError){});
                  return Container(
                    color: Colors.white,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: ScrollablePositionedList.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 29,
                          itemScrollController: itemScrollController,
                          itemBuilder: (context , index){
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
                      openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                        moveToIndex(7).catchError((onError){});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 29,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context , index){
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder: (BuildContext context, void Function() action) {
                        return selectItem[12];
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
                      openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                        moveToIndex(13).catchError((onError){});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 29,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context , index){
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder: (BuildContext context, void Function() action) {
                        return selectItem[18];
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
                      openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                        moveToIndex(19).catchError((onError){});
                        return Container(
                          color: Colors.white,
                          child: SafeArea(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(top: 10),
                              child: ScrollablePositionedList.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 29,
                                itemScrollController: itemScrollController,
                                itemBuilder: (context , index){
                                  return selectItem[index];
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      closedBuilder: (BuildContext context, void Function() action) {
                        return selectItem[24];
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    '${usersFour.share_count}',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${usersFour.comment_count}',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 20,

                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.end,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            '${usersFour.like_count}',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 55,
                                height: 20,
                              ),
                              PositionedDirectional(
                                end: 0,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1.5),
                                      borderRadius: BorderRadius.circular(18)),
                                  child: SvgPicture.asset(
                                    '${usersFour.first_rect}',
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 16,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1.5),
                                      borderRadius: BorderRadius.circular(18)),
                                  child: SvgPicture.asset(
                                    '${usersFour.second_rect}',
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 32,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1.5),
                                      borderRadius: BorderRadius.circular(18)),
                                  child: SvgPicture.asset(
                                    '${usersFour.thirty_rect}',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'مشاركة',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            CustomIcons
                                .arrow_curved_to_the_left_svgrepo_com,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'تعليق',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            CustomIcons.comment_svgrepo_com,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'أعجبنى',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            CustomIcons.like_svgrepo_com,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  ),
);
}


// this widget contains [four_2] image
Widget fourItemPostFun_2({
  required LocalData usersFour,
  required moveToIndex,
  required itemScrollController,
  required returnWidgets,
}){
  List<Widget> selectItem = returnWidgets(
    isCovered: true,
    usersFour: usersFour,
  );
  return Container(
    color: Colors.white,
    child: Wrap(
      alignment: WrapAlignment.end,
      children: [
        Container(
          padding: EdgeInsetsDirectional.only(end: 15.0,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsetsDirectional.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.grey[700],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${usersFour.name}',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.public_rounded,
                                color: Colors.grey[700],
                                size: 16,
                              ),
                            ),
                            Text(
                              '${usersFour.date}',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 15),
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
                                '${usersFour.url}',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                '${usersFour.post??''}',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Container(
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
                          transitionType: ContainerTransitionType.fadeThrough,
                          openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                            moveToIndex(0).catchError((onError){});
                            return Container(
                              color: Colors.white,
                              child: SafeArea(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(top: 10),
                                  child: ScrollablePositionedList.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: 29,
                                    itemScrollController: itemScrollController,
                                    itemBuilder: (context , index){
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
                      SizedBox(
                        width: 3,
                      ),
                      Expanded(
                        child: OpenContainer(
                          transitionDuration: Duration(seconds: 1),
                          transitionType: ContainerTransitionType.fadeThrough,
                          openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                            moveToIndex(7).catchError((onError){});
                            return Container(
                              color: Colors.white,
                              child: SafeArea(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(top: 10),
                                  child: ScrollablePositionedList.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: 29,
                                    itemScrollController: itemScrollController,
                                    itemBuilder: (context , index){
                                      return selectItem[index];
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                          closedBuilder: (BuildContext context, void Function() action) {
                            return selectItem[12];
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
                          transitionType: ContainerTransitionType.fadeThrough,
                          openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                            moveToIndex(13).catchError((onError){});
                            return Container(
                              color: Colors.white,
                              child: SafeArea(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(top: 10),
                                  child: ScrollablePositionedList.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: 29,
                                    itemScrollController: itemScrollController,
                                    itemBuilder: (context , index){
                                      return selectItem[index];
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                          closedBuilder: (BuildContext context, void Function() action) {
                            return selectItem[18];
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
                          openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                            moveToIndex(19).catchError((onError){});
                            return Container(
                              color: Colors.white,
                              child: SafeArea(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(top: 10),
                                  child: ScrollablePositionedList.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: 29,
                                    itemScrollController: itemScrollController,
                                    itemBuilder: (context , index){
                                      return selectItem[index];
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                          closedBuilder: (BuildContext context, void Function() action) {
                            return selectItem[24];
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '${usersFour.share_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${usersFour.comment_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 20,

                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.end,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              '${usersFour.like_count}',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 55,
                                  height: 20,
                                ),
                                PositionedDirectional(
                                  end: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${usersFour.first_rect}',
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  end: 16,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${usersFour.second_rect}',
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  end: 32,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${usersFour.thirty_rect}',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'مشاركة',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              CustomIcons
                                  .arrow_curved_to_the_left_svgrepo_com,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تعليق',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              CustomIcons.comment_svgrepo_com,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'أعجبنى',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              CustomIcons.like_svgrepo_com,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


// this widget contains [five] image
Widget fiveItemPostFun({
  required LocalData usersFive,
  required moveToIndex,
  required itemScrollController,
  required returnWidgets,
}){
  List<Widget> selectItem = returnWidgets(
    isCovered: true,
    usersFour: usersFive,
  );

  return Container(
    color: Colors.white,
    child: Wrap(
      alignment: WrapAlignment.end,
      children: [
        Container(
          padding: EdgeInsetsDirectional.only(end: 15.0,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsetsDirectional.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.grey[700],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${usersFive.name}',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.public_rounded,
                                color: Colors.grey[700],
                                size: 16,
                              ),
                            ),
                            Text(
                              '${usersFive.date}',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 15),
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
                                '${usersFive.url}',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                '${usersFive.post??''}',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Container(
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
                        openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                          moveToIndex(0).catchError((onError){});
                          return Container(
                            color: Colors.white,
                            child: SafeArea(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(top: 10),
                                child: ScrollablePositionedList.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 34,
                                  itemScrollController: itemScrollController,
                                  itemBuilder: (context , index){
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
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      child: OpenContainer(
                        transitionDuration: Duration(seconds: 1),
                        transitionType: ContainerTransitionType.fadeThrough,
                        openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                          moveToIndex(7).catchError((onError){});
                          return Container(
                            color: Colors.white,
                            child: SafeArea(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(top: 10),
                                child: ScrollablePositionedList.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 34,
                                  itemScrollController: itemScrollController,
                                  itemBuilder: (context , index){
                                    return selectItem[index];
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        closedBuilder: (BuildContext context, void Function() action) {
                          return selectItem[12];
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
                        openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                          moveToIndex(13).catchError((onError){});
                          return Container(
                            color: Colors.white,
                            child: SafeArea(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(top: 10),
                                child: ScrollablePositionedList.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 34,
                                  itemScrollController: itemScrollController,
                                  itemBuilder: (context , index){
                                    return selectItem[index];
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        closedBuilder: (BuildContext context, void Function() action) {
                          return selectItem[18];
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
                        openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                          moveToIndex(19).catchError((onError){});
                          return Container(
                            color: Colors.white,
                            child: SafeArea(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(top: 10),
                                child: ScrollablePositionedList.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 34,
                                  itemScrollController: itemScrollController,
                                  itemBuilder: (context , index){
                                    return selectItem[index];
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        closedBuilder: (BuildContext context, void Function() action) {
                          return selectItem[24];
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
                        openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                          moveToIndex(25).catchError((onError){});
                          return Container(
                            color: Colors.white,
                            child: SafeArea(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(top: 10),
                                child: ScrollablePositionedList.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 34,
                                  itemScrollController: itemScrollController,
                                  itemBuilder: (context , index){
                                    return selectItem[index];
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        closedBuilder: (BuildContext context, void Function() action) {
                          return selectItem[30];
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '${usersFive.share_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${usersFive.comment_count}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 20,

                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.end,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              '${usersFive.like_count}',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 55,
                                  height: 20,
                                ),
                                PositionedDirectional(
                                  end: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${usersFive.first_rect}',
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  end: 16,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${usersFive.second_rect}',
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  end: 32,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        borderRadius: BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                      '${usersFive.thirty_rect}',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'مشاركة',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              CustomIcons
                                  .arrow_curved_to_the_left_svgrepo_com,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تعليق',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              CustomIcons.comment_svgrepo_com,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'أعجبنى',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              CustomIcons.like_svgrepo_com,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
