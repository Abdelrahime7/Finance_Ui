
import 'package:finance_ui/const/styling/app_assest.dart';
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  final SvgPicture? icon;
  final String? title;
  final String ?subtitle;
  const CategoryCard({super.key, this.icon, this.title, this.subtitle});

  @override
  Widget build(Object context) {
    return Container(
      width: 140.w,
      height: 156.w,

      decoration: BoxDecoration(
         border: Border.all(color: Color(0xffFDFDFD),
        width: 1.w
        ),
        borderRadius: BorderRadius.circular(16.r),
      

      )
    ,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [ 
        Container( 

       width: 48.w,
      height: 48.w,
      decoration: BoxDecoration(
        color: Color(0xffECF1F6),
        border: Border.all(color: Color(0xffFDFDFD),
        width: 1.w
        )
        ,
        borderRadius: BorderRadius.circular(16.r)
      ),
      child:icon?? SvgPicture.asset(AppAssest.add,
      
      ),
        ),
        Text(title??"Title",
          style: TextStyle(
                fontFamily: Fonts.FontName,
                color: AppColors.black,
                fontSize: 16.sp,
                 fontWeight: FontWeight.w600,
                
              )

        ),
        Text(subtitle??"Subtitle",
        style: TextStyle(
                fontFamily: Fonts.FontName,
                color: AppColors.grey,
                fontSize: 12.sp,
                 fontWeight: FontWeight.w500,
                
              )
        )

      ]
    ),


    );
  } 


 }
 
