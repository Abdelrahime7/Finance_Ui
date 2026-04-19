
import 'package:finance_ui/const/styling/app_assest.dart';
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row (
    
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       
        Row(

           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        ClipOval(

          child: Image.asset(AppAssest.profile,
          height: 48.w,
          width: 48.w,
          fit: BoxFit.fill,
          
          ),
        ),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back ",
              style: TextStyle(
                     fontFamily: Fonts.FontName,
                     color: AppColors.secondaryColr,
                      fontSize: 12.sp,
                     fontWeight: FontWeight.w500,
                   ),
        ),
         Text(
              "Abderahim Ounissi",
              style: TextStyle(
                     fontFamily: Fonts.FontName,
                     color: AppColors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                     )
         ),
          ]
          )

          ],
        ),

        Row(
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              alignment: Alignment.center,
              decoration: BoxDecoration( 
                shape: BoxShape.circle,
                border: Border.all(color:Color(0xffE3E9ED),width: 1.w)
              ),
              child: Icon(Icons.notifications,
              color: AppColors.primaryColor,
              size: 24.sp,
              
              ),
            )
          ],
        ),
        
      ],
    );
  }
}