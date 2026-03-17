import 'dart:ui';
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Style {
  static TextStyle  titleStyle  = TextStyle(
    fontFamily: Fonts.FontName,
    color: AppColors.primaryColor,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subtitleStyle = TextStyle(
     fontFamily: Fonts.FontName,
    color: AppColors.secondaryColr,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyStyle = TextStyle(
    fontFamily: Fonts.FontName,
    color: AppColors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
   static TextStyle greybodyStyle = TextStyle(
    fontFamily: Fonts.FontName,
    color: AppColors.grey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

}