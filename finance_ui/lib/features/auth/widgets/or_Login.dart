
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class  OrLogin_Reg extends StatelessWidget {
  final String text;
  
  const OrLogin_Reg({super.key , required this.text});

  @override
  Widget build(BuildContext context) {
return  Row(
              children: [
                SizedBox(
                width: 111.w,
                child: Divider(
                  color:Color(0xffE8ECF4)
                ),
                
                ),
                const SizedBox(width: 8),
                  SizedBox(
                width: 111.w,
                
                child:Text(text
            ,
                style:  TextStyle(
                      fontFamily: Fonts.FontName,
                       color: AppColors.grey,
                      fontSize: 14.sp,
                       fontWeight: FontWeight.w500,
                           )
                  )
                ),
                    SizedBox(width: 8.w),
                  SizedBox(
                width: 111.w,
                
                child: Divider(
                  color:Color(0xffE8ECF4)
                ),
                )

              ],
             );
          
  }
}