
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:finance_ui/features/auth/widgets/back_button.dart';
import 'package:finance_ui/features/home/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MycardsScreen extends StatefulWidget {
  const MycardsScreen({super.key});

  @override
  State<MycardsScreen> createState() => _MycardsScreenState();
}

class _MycardsScreenState extends State<MycardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFD),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 18.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppBackButton(),
                  Text(
                    "My Cards",
                    style: TextStyle(
                      fontFamily: Fonts.FontName,
                      color: AppColors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: 48.w,
                    height: 48.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffECF1F6),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              const CreditCardItem(
                cardWidth: double.infinity,
                cardHeight: 179,
              ),
              SizedBox(height: 24.h),
             CreditCardItem(
              cardName: "Y-Card",
              balance: "1000\$",
              color: Color.fromARGB(255, 3, 50, 97),
 cardWidth: double.infinity,
                cardHeight: 179,


             )
              
            ],
          ),
        ),
      ),
    );
  }
}