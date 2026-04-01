


import 'package:finance_ui/const/styling/app_assest.dart';
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:finance_ui/const/widgets/outlined_button.dart';
import 'package:finance_ui/const/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Column(children: [
          Image.asset(AppAssest.onboard,
          height: 570.h,
          width: double.infinity,
          fit: BoxFit.fill,
          
          ),
          SizedBox(height:21.h),
          PrimaryButton(onPressed:()=>{},text: "Login"),
           SizedBox(height:15.h),
         PrimaryOutlinedButton (onPressed:()=>{},text: "Register"),
          SizedBox(height:46.h),
          Text("Countinue as guest",
          style: TextStyle(
             fontFamily: Fonts.FontName,
              color: AppColors.black,
             fontSize: 16.sp,
             fontWeight: FontWeight.bold,
             decoration: TextDecoration.underline
          )

          

          
          )
        ],
        )
      );
    
  }


}
