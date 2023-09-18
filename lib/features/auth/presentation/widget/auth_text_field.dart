import 'package:flutter/material.dart';
import 'package:flutter_triad/core/resources/manager_colors.dart';
import 'package:flutter_triad/core/resources/manager_fonts.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType textInputType;
  final TextEditingController controller;
  Widget? suffixIcon;

  AuthTextField({
    required this.hintText,
    required this.obscureText,
    required this.validator,
    required this.textInputType,
    required this.controller,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          color: ManagerColors.greyLight,
          fontSize: ManagerFontSize.s12,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            color: ManagerColors.secondaryColor_,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            color: ManagerColors.greyLight,
          ),
        ),
        border:  const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      ),
      style: TextStyle(
        color: ManagerColors.primaryColor_,
        fontSize: ManagerFontSize.s12,
      )
    );
  }
}