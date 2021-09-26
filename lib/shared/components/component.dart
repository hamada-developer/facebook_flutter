import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:facebook/layout/home/layout_cubit/layout_cubit.dart';
import 'package:facebook/layout/home/layout_cubit/layout_states.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:facebook/shared/style/like_fill_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
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

  final LocalData postData;
  LayoutCubit layoutCubit;
  ReactPost({
    Key? key,
    required this.postData,
    required this.layoutCubit,
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
            RowReactions( postData: postData,),
            RowButtons(layoutCubit: layoutCubit, postData: postData,),
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


class BuildReactionsIcon extends StatelessWidget {

  final String text;
  final String? iconSvg;
  final String? iconPng;
  final IconData? iconTtf;
  final Color color;
  const BuildReactionsIcon({
    Key? key,
    required this.text,
    required this.color,
    this.iconSvg,
    this.iconPng,
    this.iconTtf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$text',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
            ),
          ),
          const SizedBox(width: 10),
          ConditionalBuilder(
            condition: this.iconSvg != null,
            builder: (_)=> SvgPicture.asset(
              iconSvg!,
              height: 20,
            ),
            fallback: (_)=>ConditionalBuilder(
              condition: this.iconPng != null,
              builder: (_)=> Image.asset(iconPng!, height: 20),
              fallback: (_)=> Icon(
                iconTtf!,
                color: color,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildReactionsPreviewIcon extends StatelessWidget {
  final String? iconSvg;
  final String? iconPng;
  final IconData? iconTtf;

  const BuildReactionsPreviewIcon({
    Key? key,
    this.iconSvg,
    this.iconPng,
    this.iconTtf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 3.5,
        vertical: 5,
      ),
      child: ConditionalBuilder(
        condition: this.iconSvg != null,
        builder: (_) => SvgPicture.asset(
          iconSvg!,
          height: 40,
        ),
        fallback: (_) => Image.asset(
          iconPng!,
          height: 40,
        ),
      ),
    );
  }
}

//Special {Buttons share,comment, ike}
class RowButtons extends StatelessWidget {
  final Color background;
  final Color color;
  final LayoutCubit layoutCubit;
  final LocalData postData;
  RowButtons({
    Key? key,
    this.background = Colors.white,
    this.color = Colors.grey,
    required this.layoutCubit,
    required  this.postData,
  }) : super(key: key);

  final List<Reaction> defaultInitialReaction = [

    /***/
    Reaction(
      icon: BuildReactionsIcon(
        text: 'أعجبنى',
        color: Colors.grey,
        iconTtf: CustomIcons.like_svgrepo_com,
      ),
    ),
    Reaction(
      icon: BuildReactionsIcon(
        text: 'أعجبنى',
        color: primaryColor,
        iconTtf: LikeFill.like,
      ),
    ),

    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconPng: 'assets/images/facebook_angry_2.png'),
      icon: BuildReactionsIcon(
        iconPng: 'assets/images/facebook_angry_2.png',
        text: 'أغضبني',
        color: Color(0XFFFF4F2C),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_sad.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/facebook_sad.svg',
        text: 'أحزنني',
        color: Color(0XFFFEBE44),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_wow.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/facebook_wow.svg',
        text: 'واااو',
        color: Color(0XFFFEBD42),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_haha.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/facebook_haha.svg',
        text: 'هاهاها',
        color: Color(0XFFffda6b),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/care.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/care.svg',
        text: 'أدعمه',
        color: Color(0XFFffda6b),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_love.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/facebook_love.svg',
        text: 'أحببته',
        color: Color(0XFFf05766),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(
        iconSvg: 'assets/icons/facebook_like.svg',
      ),
      icon: BuildReactionsIcon(
        text: 'أعجبنى',
        color: primaryColor,
        iconTtf: LikeFill.like,
      ),
    ),
  ];

  final reactions = [
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconPng: 'assets/images/facebook_angry_2.png'),
      icon: BuildReactionsIcon(
        iconPng: 'assets/images/facebook_angry_2.png',
        text: 'أغضبني',
        color: Color(0XFFFF4F2C),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_sad.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/facebook_sad.svg',
        text: 'أحزنني',
        color: Color(0XFFFEBE44),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_wow.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/facebook_wow.svg',
        text: 'واااو',
        color: Color(0XFFFEBD42),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_haha.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/facebook_haha.svg',
        text: 'هاهاها',
        color: Color(0XFFffda6b),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/care.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/care.svg',
        text: 'أدعمه',
        color: Color(0XFFffda6b),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_love.svg'),
      icon: BuildReactionsIcon(
        iconSvg: 'assets/icons/facebook_love.svg',
        text: 'أحببته',
        color: Color(0XFFf05766),
      ),
    ),
    Reaction(
      previewIcon: BuildReactionsPreviewIcon(
        iconSvg: 'assets/icons/facebook_like.svg',
      ),
      icon: BuildReactionsIcon(
        text: 'أعجبنى',
        color: primaryColor,
        iconTtf: LikeFill.like,
      ),
    ),
  ];

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
            child: FlutterReactionButtonCheck(
              onReactionChanged: (reaction, index, isChecked) {
                if(isChecked){
                  if(index == -1 || index == 6){
                    // اللايك الازرق منور
                    print('like');
                    layoutCubit.changeReactions(
                      react: React.like,
                      postData: postData,
                    );
                    // set data in this post data
                  }
                  else{
                    switch(index){
                      case 0:
                        print('angry');
                        layoutCubit.changeReactions(
                          react: React.angry,
                          postData: postData,
                        );
                        break;
                      case 1:
                        print('sad');
                        layoutCubit.changeReactions(
                          react: React.sad,
                          postData: postData,
                        );
                        break;
                      case 2:
                        print('wow');
                        layoutCubit.changeReactions(
                          react: React.wow,
                          postData: postData,
                        );
                        break;
                      case 3:
                        print('haha');
                        layoutCubit.changeReactions(
                          react: React.haha,
                          postData: postData,
                        );
                        break;
                      case 4:
                        print('care');
                        layoutCubit.changeReactions(
                          react: React.care,
                          postData: postData,
                        );
                        break;
                      case 5:
                        print('love');
                        layoutCubit.changeReactions(
                          react: React.love,
                          postData: postData,
                        );
                        break;
                    }
                  }
                }
                else{
                  layoutCubit.changeReactions(
                    react: React.unLike,
                    postData: postData,
                  );
                  print('UnLike');
                }
              },
              reactions: reactions,
              initialReaction: initialReaction(postData.rect),
              selectedReaction: defaultInitialReaction[1],
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


Reaction initialReaction(React react) {
  switch (react) {
    case React.unLike:
      return Reaction(
        icon: BuildReactionsIcon(
          text: 'أعجبنى',
          color: Colors.grey,
          iconTtf: CustomIcons.like_svgrepo_com,
        ),
      );
    case React.like:
      return Reaction(
        icon: BuildReactionsIcon(
          text: 'أعجبنى',
          color: primaryColor,
          iconTtf: LikeFill.like,
        ),
      );
    case React.angry:
      return Reaction(
        previewIcon: BuildReactionsPreviewIcon(
            iconPng: 'assets/images/facebook_angry_2.png'),
        icon: BuildReactionsIcon(
          iconPng: 'assets/images/facebook_angry_2.png',
          text: 'أغضبني',
          color: Color(0XFFFF4F2C),
        ),
      );
    case React.sad:
      return Reaction(
        previewIcon:
            BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_sad.svg'),
        icon: BuildReactionsIcon(
          iconSvg: 'assets/icons/facebook_sad.svg',
          text: 'أحزنني',
          color: Color(0XFFFEBE44),
        ),
      );
    case React.wow:
      return Reaction(
        previewIcon:
            BuildReactionsPreviewIcon(iconSvg: 'assets/icons/facebook_wow.svg'),
        icon: BuildReactionsIcon(
          iconSvg: 'assets/icons/facebook_wow.svg',
          text: 'واااو',
          color: Color(0XFFFEBD42),
        ),
      );
    case React.haha:
      return Reaction(
        previewIcon: BuildReactionsPreviewIcon(
            iconSvg: 'assets/icons/facebook_haha.svg'),
        icon: BuildReactionsIcon(
          iconSvg: 'assets/icons/facebook_haha.svg',
          text: 'هاهاها',
          color: Color(0XFFffda6b),
        ),
      );
    case React.care:
      return Reaction(
        previewIcon:
            BuildReactionsPreviewIcon(iconSvg: 'assets/icons/care.svg'),
        icon: BuildReactionsIcon(
          iconSvg: 'assets/icons/care.svg',
          text: 'أدعمه',
          color: Color(0XFFffda6b),
        ),
      );
    default:
      return Reaction(
        previewIcon: BuildReactionsPreviewIcon(
            iconSvg: 'assets/icons/facebook_love.svg'),
        icon: BuildReactionsIcon(
          iconSvg: 'assets/icons/facebook_love.svg',
          text: 'أحببته',
          color: Color(0XFFf05766),
        ),
      );
  }
}