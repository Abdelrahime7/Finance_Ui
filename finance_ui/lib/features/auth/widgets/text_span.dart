 
 import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomTextSpan  extends StatelessWidget{
  final String firstText;
  final String secondText;
  final VoidCallback onTap;

  const BottomTextSpan({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: RichText(
          text: TextSpan(
            text: firstText,
            style: TextStyle(
              fontFamily: Fonts.FontName,
              color: AppColors.primaryColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            children: [
              TextSpan(
                text: " $secondText",
                style: TextStyle(
                  fontFamily: Fonts.FontName,
                   color: AppColors.black,
                            fontSize: 14.sp,
                             fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {} 