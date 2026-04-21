
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfo extends StatelessWidget {
  final String title;
  final String difinition;
  const PersonalInfo( {super.key, required this.title, required this.difinition});

  @override
  Widget build(BuildContext context) {
    
    return  
     
        Container(
            width:337.w ,
            height: 78.w,
            color:Color.fromARGB(255, 245, 246, 247),
           child: Positioned(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(
                 title,
                style: TextStyle(
                  fontFamily: Fonts.FontName,
                  color: AppColors.grey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                 ),
                 SizedBox(height: 16.h),
                 Text(
                difinition,
                style: TextStyle(
                  fontFamily: Fonts.FontName,
                  color: AppColors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                 )
               
                ]
                       ),
             ),
           ),
          
     );
  }
} 