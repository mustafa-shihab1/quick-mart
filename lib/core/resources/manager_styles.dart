import 'package:flutter/material.dart';
import 'manager_fonts.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
  double height,
  TextDecoration decoration,
  dynamic overflow,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
    decoration: decoration,
    overflow: overflow,
    height: height,
  );
}

// Regular TextStyle
TextStyle getRegularTextStyle({
  required double fontSize,
  required Color color,
  dynamic overflow = TextOverflow.visible,
  TextDecoration decoration = TextDecoration.none,
  double height = 1.0,
}) {
  return _getTextStyle(
    fontSize,
    ManagerFontFamily.fontFamily,
    ManagerFontWeight.regular,
    color,
    height,
    decoration,
    overflow,

  );
}

// Medium TextStyle
TextStyle getMediumTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  dynamic overflow = TextOverflow.visible,
  double height = 1.0,
}) {
  return _getTextStyle(
    fontSize,
    ManagerFontFamily.fontFamily,
    ManagerFontWeight.medium,
    color,
    height,
    decoration,
    overflow,
  );
}

// Bold TextStyle
TextStyle getBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  dynamic overflow = TextOverflow.visible,
  double height = 1.0,
}) {
  return _getTextStyle(fontSize, ManagerFontFamily.fontFamily,
      ManagerFontWeight.bold, color, height,decoration, overflow);
}
