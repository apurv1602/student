

import 'package:flutter/material.dart';
import 'package:student/src/constants/colors.dart';

class TTextFormFieldTheme{

  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme=
  const InputDecorationTheme(
      border: OutlineInputBorder(),
    prefixIconColor: tSecondaryColor,
    suffixIconColor: tSecondaryColor,
    floatingLabelStyle: TextStyle(color: tSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2,color: tSecondaryColor)
    ));

  static InputDecorationTheme darkInputDecorationTheme=
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: tPrimaryColor,
      suffixIconColor: tPrimaryColor,
      floatingLabelStyle: TextStyle(color: tPrimaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: tPrimaryColor)
      ));
}