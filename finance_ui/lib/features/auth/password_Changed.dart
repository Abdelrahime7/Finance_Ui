
import 'package:finance_ui/const/styling/app_assest.dart';
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:finance_ui/const/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PasswordChangedScreen extends StatelessWidget
{
  const PasswordChangedScreen({super.key});


  @override

  Widget build(BuildContext context) {

   
      return Scaffold(
    body: Padding(padding:   const EdgeInsets.symmetric(horizontal: 8),
    
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: AlignmentGeometry.center,
          child: Container(
            width: 100.w,
            height:100.w,
             decoration: BoxDecoration(
                color:Colors.transparent,
               border: Border.all(color:Color(0xffE8ECF4),width: 2),
               borderRadius: BorderRadius.circular(8.r),
              ),
              child: SvgPicture.asset(AppAssest.greenSticker,width: 26.w,height: 26.w,)
          
          
          ),
        ),
        SizedBox(height: 35.h,),
  
           Text("Password Changed!",
            style:TextStyle(
                  fontFamily: Fonts.FontName,
                   color: AppColors.primaryColor,
                  fontSize: 30.sp,
                   fontWeight: FontWeight.bold,
            )
            ),
  SizedBox(height: 8.h,),
  
            Text("Your password has been changed successfully.",
            style:TextStyle(
                  fontFamily: Fonts.FontName,
                   color: AppColors.grey,
                  fontSize: 16.sp,
                   fontWeight: FontWeight.w500,
            )
             ),
              SizedBox(height: 40.h,),
          
        PrimaryButton(onPressed:()=>{},
        text: "Back to Login",
        )

      ],
    ),
    ) ,

      );
  
  }

}