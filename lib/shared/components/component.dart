import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final String hint;

  final TextEditingController controller;
  TextInputType? textInputType;
  bool isHide;

  Widget? suffixIcon;
  Widget? prefixIcon;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onChanged;

  DefaultTextFormField({
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
