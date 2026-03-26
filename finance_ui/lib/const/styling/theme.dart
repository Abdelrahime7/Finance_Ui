import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AppThemes{

 static final ThemeData lightTheme = ThemeData(
  primaryColor: AppColors.black,

scaffoldBackgroundColor: AppColors.black,
 textTheme: TextTheme (
  displayLarge: TextStyle(
    fontFamily: Fonts.FontName,
    color: AppColors.primaryColor,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
  ),

  titleMedium: TextStyle(
     fontFamily: Fonts.FontName,
    color: AppColors.secondaryColr,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  )
  ,
  bodyLarge:  TextStyle(
    fontFamily: Fonts.FontName,
    color: AppColors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  ),
  
  bodySmall:  TextStyle(
    fontFamily: Fonts.FontName,
    color: AppColors.grey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  ) ,
),
buttonTheme: ButtonThemeData(
  buttonColor: AppColors.primaryColor,
  textTheme: ButtonTextTheme.primary,
)

);
}