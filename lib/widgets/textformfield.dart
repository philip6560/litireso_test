import 'package:flutter/material.dart';
import 'package:flutter_app/utils/constants.dart';
import 'package:flutter_app/utils/responsive.dart';

class CustomFormField extends StatelessWidget {

  final bool obscureText;
  final String labelText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final TextInputAction textInputAction;
  final OnValidateFunction validator;

  CustomFormField({
    this.suffixIcon,
    this.obscureText = false,
    this.textInputAction = TextInputAction.done,
    required this.labelText,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {

    height(value)=> scale_height(value, context);

    width(value)=> scale_width(value, context);

    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      textInputAction: textInputAction,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }
}
