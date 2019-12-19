import 'package:flutter/material.dart';
import 'package:kimirina_app/utils/utils.dart';
import 'package:kimirina_app/utils/colors.dart';

ThemeData buildThemeData(){
  final baseTheme = ThemeData(fontFamily: AvailableFonts.primaryFont);

  // return baseTheme.copyWith();
   return baseTheme.copyWith(
     primaryColor: primaryColor,
     primaryColorDark: primaryDark,
     primaryColorLight: primaryLight,
     accentColor: secondaryColor,
   );
}