import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/style.dart';
import 'package:flutter/material.dart';

class AppThemes{

 static  ThemeData lightTheme = ThemeData(
  primaryColor: AppColors.primaryColor,

scaffoldBackgroundColor: AppColors.white,
 textTheme: TextTheme(
  displayLarge: Style.titleStyle as TextStyle?, 
  titleMedium: Style.subtitleStyle as TextStyle?,
  bodyLarge: Style.bodyStyle as TextStyle?,
  bodySmall: Style.greybodyStyle as TextStyle?,
),
buttonTheme: ButtonThemeData(
  buttonColor: AppColors.primaryColor,
  textTheme: ButtonTextTheme.primary,
)

);
}