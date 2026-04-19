

import 'package:finance_ui/const/styling/app_assest.dart';
import 'package:finance_ui/const/styling/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;
  const BottomNavBar({super.key, required this.currentIndex 
, this.onTap});  


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.grey ,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssest.wallet,),
          label: 'Wallet',
        ),
         BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
              color:AppColors.primaryColor,
              shape: BoxShape.circle

            ),
         width:50.w,
         height: 50.w,
          child:Icon(Icons.add,
          color: Colors.white,
          
          )
          ),
          label: "Add"
        ),
        BottomNavigationBarItem(
          icon: 
          SvgPicture.asset(AppAssest.stats),
          label: 'Stats',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }


 }