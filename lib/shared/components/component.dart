import 'package:facebook/model/local_data.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// TextFormField for app
class DefaultTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final String hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? textInputType;
  final bool isHide;

  const DefaultTextFormField({
    Key? key,
    required this.hint,
    this.controller,
    this.validator,
    this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
    this.textInputType,
    this.isHide = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      textAlign: TextAlign.end,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: '$hint',
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      keyboardType: textInputType,
      obscureText: isHide,
    );
  }
}

// Button for app
class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color background;
  final double paddingHorizontal;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.background = primaryColor,
    this.paddingHorizontal = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
      ),
      child: Container(
        padding: const EdgeInsetsDirectional.only(
          top: 12.0,
        ),
        width: double.infinity,
        child: MaterialButton(
          onPressed: onPressed,
          child: Text(
            '$text',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          color: background,
        ),
      ),
    );
  }
}

//this component above image of post
// {{Icon more + userName} + post Text}
class MoreOptionPost extends StatelessWidget {

  final LocalData postData;
  final bool isOpenedContainer;
  const MoreOptionPost({
    Key? key,
    required this.postData,
    this.isOpenedContainer = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      '${postData.name}',
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
                          '${postData.date}',
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
                            '${postData.url}',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            '${postData.post??''}',
            textDirection: TextDirection.rtl,
            maxLines: isOpenedContainer ? 3 : null,
            overflow:
            isOpenedContainer ? TextOverflow.ellipsis : null,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}

// this component bellow image of post
// {counter share,like,Reactions and post buttons}
class ReactPost extends StatelessWidget {

  final LocalData post;
  const ReactPost({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 12.0,
            ),
            RowReactions( postData: post,),
            RowButtons(),
          ],
        ),
      ),
    );
  }
}

//Special {counter share,comment,like,Reactions}
class RowReactions extends StatelessWidget {

  final LocalData postData;
  final Color color;
  const RowReactions({
    Key? key,
    required this.postData,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${postData.share_count}',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: color,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '${postData.comment_count}',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: color,
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
                  '${postData.like_count}',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: color,
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
                          '${postData.first_rect}',
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
                          '${postData.second_rect}',
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
                          '${postData.thirty_rect}',
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
    );
  }
}

//Special {Buttons share,comment, ike}
class RowButtons extends StatelessWidget {

  final Color background;
  final Color color;
  const RowButtons({
    Key? key,
    this.background = Colors.white,
    this.color = Colors.grey
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 30,
              child: Material(
                color: background,
                child: InkWell(
                  onTap: () {
                    print('مشاركة');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'مشاركة',
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        CustomIcons.arrow_curved_to_the_left_svgrepo_com,
                        color: color,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 30,
              child: Material(
                color: background,
                child: InkWell(
                  onTap: () {
                    print('تعليق');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'تعليق',
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        CustomIcons.comment_svgrepo_com,
                        color: color,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 30,
              child: Material(
                color: background,
                child: InkWell(
                  onTap: () {
                    print('أعجبنى');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'أعجبنى',
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        CustomIcons.like_svgrepo_com,
                        color: color,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Navigate to Screen and finish
void navigateAndFinish({
  required BuildContext context,
  required Widget widget,
}) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (route) => false,
  );
}

// Navigate to Screen
void navigateTo({
  required BuildContext context,
  required Widget widget,
}) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

// Navigate back Screen
void navigateBack(context) {
  Navigator.pop(context);
}
