
import 'package:finance_ui/const/styling/app_assest.dart';
import 'package:finance_ui/features/home/widgets/carosel_slide.dart';
import 'package:finance_ui/features/home/widgets/category_widget.dart';
import 'package:finance_ui/features/home/widgets/header_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: const Color(0xffFDFDFD),
      body: SafeArea(
      
        child: SingleChildScrollView(
          child: Padding(
            
          padding:  const EdgeInsets.symmetric(horizontal: 18),
          
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const   SizedBox(height: 18,),
              HeaderProfile(),
              const SizedBox(height: 18,),

              CustomCarouselSlide(),
              
               SizedBox(height: 24.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryCard(title:"Send money",
                  icon: SvgPicture.asset(AppAssest.send ,height: 24.h,width: 24.w,),
                  subtitle: "Take acc to acc" ,
                  ),

                  CategoryCard(title:"Pay the bill",
                   icon: SvgPicture.asset(AppAssest.wallet,height: 24.h,width: 24.w,),
                  subtitle:"Lorem ipsum",),
                ]),
                SizedBox(height: 24.h,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryCard(title:"Request",
                  icon: SvgPicture.asset(AppAssest.users,height: 24.h,width: 24.w,),
                  subtitle: "Take acc to acc",),
                  CategoryCard(title:"Contact",
                  icon: SvgPicture.asset(AppAssest.stats,height: 24.h,width: 24.w,),
                  subtitle: "Take acc to acc",),
                ]

              )
              ],
            ),
          ),
        ),
      ),
    );
  }
  }
