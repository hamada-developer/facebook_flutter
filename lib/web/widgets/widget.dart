import 'package:facebook/shared/style/color.dart';
import 'package:flutter/material.dart';

class DefaultTextFormFieldWeb extends StatelessWidget {
  final String hint;

  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool isHide;

  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;

  DefaultTextFormFieldWeb({
    required this.hint,
    required this.controller,
    this.isHide = false,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      textAlign: TextAlign.end,
      onChanged: onChanged,
      style: TextStyle(),
      decoration: InputDecoration(
        hintText: '$hint',
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.grey[600],
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
      ),
      keyboardType: textInputType,
      obscureText: isHide,
    );
  }
}

class DefaultButtonWeb extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? height;
  final Color color;
  final double width;
  DefaultButtonWeb({
    required this.onPressed,
    required this.text,
    this.height,
    this.color = primaryColor,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(

        onPressed: onPressed,
        child: Text(
          '$text',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: color,
      ),
    );
  }
}
