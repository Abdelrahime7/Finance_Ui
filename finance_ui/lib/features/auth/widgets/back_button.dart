import 'package:finance_ui/const/styling/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});



    
      @override
      Widget build(BuildContext context) {
     
       return  Align(
          alignment: Alignment.topLeft,
          child:
           Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color:Colors.transparent,
             border: Border.all(color:Color(0xffE8ECF4),width: 2),
             borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.primaryColor,
            size: 17.sp,
          
            ),
          ),
       );
     
   
      }   


} 