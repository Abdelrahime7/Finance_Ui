
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:finance_ui/const/widgets/primary_button.dart';
import 'package:finance_ui/features/auth/widgets/back_button.dart';
import 'package:finance_ui/features/auth/widgets/text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  
   const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreen();
}

class _VerificationScreen extends State<VerificationScreen> {
 
  late PinInputController _otpController;
 
  @override
  void initState() {
    super.initState();
    _otpController = PinInputController();
    
  }


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
          
        
         SizedBox(height:28.h),
          SizedBox(
            width: 280.w,
            child:Text("OTP Verification",
            style:TextStyle(
                  fontFamily: Fonts.FontName,
                   color: AppColors.primaryColor,
                  fontSize: 30.sp,
                   fontWeight: FontWeight.bold,
            )
            )
          ),
             SizedBox(height:10.h),
               SizedBox(
            width: 331.w,
            height: 48.w,
             child:Text("Enter the verification code we just sent on your email address.",
            style:TextStyle(
                  fontFamily: Fonts.FontName,
                   color: AppColors.grey,
                  fontSize: 16.sp,
                   fontWeight: FontWeight.w500,
            )
             )
            ),
            SizedBox(height:32.h),

             
               
                MaterialPinField(length: 4,
                pinController: _otpController,
                keyboardType: TextInputType.number,
                           theme:MaterialPinTheme(
                            spacing: 20,
                            entryAnimation: MaterialPinAnimation.scale,
                          animationDuration: Duration(milliseconds: 150),
                          animationCurve: Curves.easeOut,
                           
                           ) ,
                
                ),
                        
              
            
             SizedBox(height:38.h),
             PrimaryButton(onPressed: ()=>{},
             text: "Verify",
             ),
             Spacer(),
             BottomTextSpan(
              firstText: "Didn’t received code?",
              secondText:"Resend" ,
              onTap: ()=>{},
             ),
              SizedBox(height:20.h),
          ]
        )
    )
   )
   );
  }
} 