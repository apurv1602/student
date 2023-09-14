import 'package:flutter/material.dart';
import 'package:student/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:student/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:student/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:student/src/utils/theme/widget_theme/text_theme.dart';

import '../../constants/colors.dart';

class TAppTheme {

  TAppTheme._();

  static  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness:Brightness.light, primarySwatch: Colors.orange,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,

    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,


  );


  static ThemeData darkTheme= ThemeData(
    brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}