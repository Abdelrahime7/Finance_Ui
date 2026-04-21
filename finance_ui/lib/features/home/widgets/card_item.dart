 
import 'package:finance_ui/const/styling/app_assest.dart';
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
class CreditCardItem extends StatelessWidget   {
  final String? cardName;
  final double? cardWidth;
  final String? balance ;
  final String? serialNumber;
  final String? date;
  final Color? color;
  final double? cardHeight;

  const CreditCardItem({super.key, this.cardName , this.balance,
   this.serialNumber, this.date, this.color, this.cardWidth, this.cardHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth ?? 207.w,
      height: cardHeight ?? 220.h,
      decoration: BoxDecoration(
        color: color ?? AppColors.primaryColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
      Positioned
      (
     bottom:0 ,
      left:0 ,

        child:Image.asset(
        AppAssest.layer2, 
        width: 210.w,
        height: 190.h,
        fit: BoxFit.fill,
        
      ),
      ),
           Positioned
      (
     bottom:0 ,
      left:0 ,

        child:Image.asset(
        AppAssest.layer2, 
        width: 210.w,
        height: 190.h,
          fit: BoxFit.fill,
        
      ),
      ),
       Positioned
      (
     bottom:0 ,
      left:0 ,

        child:Image.asset(
        AppAssest.layer1, 
        width: 140.w,
        height: 130.h,
          fit: BoxFit.fill,
        
      ),
      ),
      Positioned(
       left: 24.w,
       top: 24.h,
       right: 24.w,
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cardName??"X-Card",
                  style: TextStyle(
                    fontFamily: Fonts.FontName,
                    color: AppColors.white,
                    fontSize: 12.sp,
                     fontWeight: FontWeight.bold,
                    
                  )
                  ),
                 
                  Text("visa",
                  style: TextStyle(
                    fontFamily: Fonts.FontName,
                    color: AppColors.white,
                    fontSize: 12.sp,
                     fontWeight: FontWeight.bold,
                    
                  )
                  ),

                ],
              ),
               SizedBox(height:57.h),
              Text("Balance",
                style: TextStyle(
                fontFamily: Fonts.FontName,
                color: AppColors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                
              ),),
               SizedBox(height:8.h),
               Text(balance??"23400 EG",
                 style: TextStyle(
                fontFamily: Fonts.FontName,
                color: AppColors.white,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,)
                ),
                 SizedBox(height:70.h),
          
               Row(
                children: [
                  Text(serialNumber??"****  3434",
                   style: TextStyle(
                fontFamily: Fonts.FontName,
                color: AppColors.grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,)
                  ),
                 SizedBox(width: 40.w),
                  Text(date ??"12/24",
                  style: TextStyle(
                fontFamily: Fonts.FontName,
                color: AppColors.grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,)
          
                  )
                
                ]
               ),
             
            ]
          
          ),
        ),
        ],
      ),
    );
  }

}