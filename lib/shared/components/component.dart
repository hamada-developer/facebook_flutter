import 'package:facebook/shared/style/color.dart';
import 'package:flutter/material.dart';

// TextFormField
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

// Button
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
