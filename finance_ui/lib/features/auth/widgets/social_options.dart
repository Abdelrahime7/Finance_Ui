 import 'package:finance_ui/const/styling/app_assest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialOptions extends StatelessWidget {
@override
Widget build(BuildContext context)  
{
  
     
       return    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Container(
                 alignment: Alignment.center,
            width: 105.w,
            height: 56.w,
            decoration: BoxDecoration(
              color:Colors.transparent,
             border: Border.all(color:Color(0xffE8ECF4),width: 2),
             borderRadius: BorderRadius.circular(8.r),
            ),
            child:SvgPicture.asset(AppAssest.facebookIcon,
            
            width: 26.w,
            height: 26.w
            ),
          
          ),

                  Container(
                    alignment: Alignment.center,
           width: 105.w,
            height: 56.w,
            decoration: BoxDecoration(
              color:Colors.transparent,
             border: Border.all(color:Color(0xffE8ECF4),width: 2),
             borderRadius: BorderRadius.circular(8.r),
            ),
            child: SvgPicture.asset(AppAssest.googleIcon,width: 26.w,height: 26.w,)
          ),
                   Container(
                     alignment: Alignment.center,
            width: 105.w,
            height: 56.w,
            decoration: BoxDecoration(
              color:Colors.transparent,
             border: Border.all(color:Color(0xffE8ECF4),width: 2),
             borderRadius: BorderRadius.circular(8.r),
            ),
           child:SvgPicture.asset(AppAssest.appleIcon,width: 26.w,height: 26.w,)
          ),
              ]
             
             ) ;

}
}