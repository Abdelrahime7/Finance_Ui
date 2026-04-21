
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/features/home/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 class CustomCarouselSlide extends StatefulWidget {

  const CustomCarouselSlide({super.key});
  @override
  State<CustomCarouselSlide> createState() => _CustomCarouselSlideState();
}

class _CustomCarouselSlideState extends State<CustomCarouselSlide> {
  int currentPage=0;
  @override
  Widget build(BuildContext context)  {
    return
Column(
  children: [
    CarouselSlider(
      options: CarouselOptions(height: 300.h,
      padEnds: false,
      enlargeCenterPage: true,
      viewportFraction: 0.7,
      enlargeFactor: 0.05,
      onPageChanged: (index,reason){
        setState(() {
          currentPage=index;
        });
      }
      ),
      items: [
       CreditCardItem(),
      CreditCardItem(),
       CreditCardItem()
      ]
      
     
    ),
    SizedBox(height: 16.h,),
    DotsIndicator(
      animate: true,
  dotsCount: 3,
  position:currentPage.toDouble(),
  decorator: DotsDecorator(
    activeColor: AppColors.primaryColor,
    color: AppColors.grey,

    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ),
)

  ],
);

  }
}