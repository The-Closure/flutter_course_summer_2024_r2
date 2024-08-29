import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabadol_app/core/constants/constants_manager.dart';

class StylesManager {
  static TextStyle getJawadtautRegularStyle(
      {required double fontSize, required Color color}) {
    return TextStyle(
      fontFamily: ConstantsManager.jawadtautFontFamily,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle getInterRegularStyle(
      {required double fontSize, required Color color}) {
    return TextStyle(
      fontFamily: ConstantsManager.interFontFamily,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle getNosiferCapsBoldStyle(
      {required double fontSize, required Color color}) {
    return TextStyle(
      fontFamily: ConstantsManager.nosiferCapsFontFamily,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}
