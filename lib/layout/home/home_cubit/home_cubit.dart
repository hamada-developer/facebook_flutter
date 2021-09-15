import 'package:bloc/bloc.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates>{


  final List<Widget> oneItemPost = [
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
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sara Ahmed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(
                      Icons.public_rounded,
                      color: Colors.grey[700],
                      size: 16,
                    ),
                  ),
                  Text(
                    'أمس الساعة 9:13 م',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
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
                ' الزمالك هذا الموسم \nبطل الدورى لكرة القدم\n بطل الدورى المصرى لكرة اليد \n بطل دورى السوبر المصري لكرة السلة\nبطل دورى السوبر المصري لكرة السلة',
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
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            '${arabicNumber.convert(4777)} مشاركة ',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '${arabicNumber.convert(4777)} تعليقا ',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Spacer(),
          Container(
            width: 85,
            child: Stack(
              children: [
                Row(
                  children: [
                    Text(
                      '${arabicNumber.convert(43576)}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
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
                      'assets/icons/facebook_love.svg',
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
                      'assets/icons/care.svg',
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
                      'assets/icons/facebook_like.svg',
                    ),
                  ),
                ),
              ],
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
      color: Colors.purple,
      width: double.infinity,
      height: 600,
    ),
    SizedBox(
      height: 15,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            '${arabicNumber.convert(4777)} مشاركة ',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '${arabicNumber.convert(4777)} تعليقا ',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Spacer(),
          Container(
            width: 85,
            child: Stack(
              children: [
                Row(
                  children: [
                    Text(
                      '${arabicNumber.convert(43576)}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
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
                      'assets/icons/facebook_love.svg',
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
                      'assets/icons/care.svg',
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
                      'assets/icons/facebook_like.svg',
                    ),
                  ),
                ),
              ],
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
  HomeCubit (): super(InitialHomeState());
  static HomeCubit get(context) => BlocProvider.of(context);
}