import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:finance_ui/const/widgets/custom_textfield.dart';
import 'package:finance_ui/const/widgets/primary_button.dart';
import 'package:finance_ui/features/auth/widgets/back_button.dart';
import 'package:finance_ui/features/auth/widgets/or_Login.dart';
import 'package:finance_ui/features/auth/widgets/social_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {

   const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _ispassword=true;

  @override
  Widget build(BuildContext context) {
  
   return SafeArea(child:
   Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const AppBackButton(),
         // Wrap BackButton in IconTheme to control its color
        

       SizedBox(height:8.h),
        SizedBox(
          width: 280.w,
          child:Text("Welcome back again",
          style:TextStyle(
                fontFamily: Fonts.FontName,
                 color: AppColors.primaryColor,
                fontSize: 30.sp,
                 fontWeight: FontWeight.bold,
          )
          )
        ),
         SizedBox(height:32.h),
         CustomeTextField( 
          hintText:"Enter your email",
          ispassword: false,
         width: 331.w,
          height: 50.h
         

         ),
         SizedBox(height:15.h),
         CustomeTextField( 
          hintText:"Enter your password",
          ispassword: _ispassword ,
          sufixIcon: IconButton( onPressed: (){
            setState(() {
            _ispassword=!_ispassword;
            });
         
            },
           icon:  Icon(_ispassword ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
          ),

          ),
         width: 331.w,
         height: 50.h
         

         ),
          SizedBox(height:15.h),
         
              Align(
                alignment: Alignment.centerRight,
                child: 
                        Text("Forgot Password?",
                           style:TextStyle(
                      fontFamily: Fonts.FontName,
                       color: AppColors.grey,
                      fontSize: 14.sp,
                       fontWeight: FontWeight.w500,
                           )
                           )
                         ),
            
           
        
            SizedBox(height:30.h),
            PrimaryButton(text: "Login",
            onPressed: ()=>{},
            ),
             SizedBox(height:35.h),
            OrLoginWith(),
            SizedBox(height:22.h),
            SocialOptions(),
             SizedBox(height:155.h),
             Center(
               child: RichText(
                text: TextSpan(
                 text: "Don't have an account?",
                 style: TextStyle(
                   fontFamily: Fonts.FontName,
                         color: AppColors.grey,
                        fontSize: 14.sp,
                         fontWeight: FontWeight.w500,
                             ),
                 children: [
                  TextSpan(
               
                    text: "Register now",
                    style: TextStyle(
                   fontFamily: Fonts.FontName,
                         color: AppColors.primaryColor,
                        fontSize: 14.sp,
                         fontWeight: FontWeight.bold,
                             ),
                 )
                 ]
               )
               ),
             )

        ] 
      ),
    )
   )
   ); 
  }
}
