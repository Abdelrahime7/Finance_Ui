

import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeTextField extends StatelessWidget {
  final String? hintText;
 final Widget ?sufixIcon ;
 final bool ?ispassword;
 final  double ? width ; 

 
  const CustomeTextField  ({super.key, this.hintText, this.sufixIcon, this.ispassword, this.width});

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      width:width ??331.w,

     child:  TextField(
      obscureText: ispassword??false,
      cursorColor: AppColors.primaryColor,
      autofocus: false,
      

      decoration: InputDecoration(
      filled: true,
        fillColor: Color(0xffF7F8F9),
        suffixIcon: sufixIcon,
        hintText: hintText ?? "",
        hintStyle: TextStyle(
        color: AppColors.secondaryColr,
        fontSize: 15.sp,
        fontFamily: Fonts.FontName,
        fontWeight: FontWeight.w500
        


        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Color(0xffE8ECF4),width: 1)
        ,
        

        )  ,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide:  BorderSide(color:AppColors.primaryColor,width: 1)


    )
    )
     )
    );
  }
}  