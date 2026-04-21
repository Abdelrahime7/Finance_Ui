
import 'package:finance_ui/const/styling/app_assest.dart';
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:finance_ui/features/auth/widgets/back_button.dart';
import 'package:finance_ui/features/myProfil/widgets/personal%20_Info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
class ProfilScreen  extends StatelessWidget
{
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
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
                      "My Profile",
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
                      child: const Icon(Icons.edit_outlined),
                    
                    ),
                  ]
                    ),
          SizedBox(height: 50.h),
          ClipOval(
       
            child: Image.asset(AppAssest.profile,
            height: 100.w,
            width: 100.w,
            fit: BoxFit.fill,
            
            ),
          ),
          SizedBox(height: 9.h),
           
          PersonalInfo(title:"Full Name", difinition: "john doe"),
          PersonalInfo(title:"Email", difinition: "johndoe@gmail.com"),
          PersonalInfo(title:"Phone Number", difinition: "+213244342"),
          PersonalInfo(title:"Adress", difinition: "street  123 -New york"),
       
       
       
       
         
              ]
           )
       
       
       
           ),
     );
       
        
            
          
             }

}