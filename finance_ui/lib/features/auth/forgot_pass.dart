
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:finance_ui/const/widgets/custom_textfield.dart';
import 'package:finance_ui/const/widgets/primary_button.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/features/auth/widgets/back_button.dart';
import 'package:finance_ui/features/auth/widgets/text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const AppBackButton(),
           // Wrap BackButton in IconTheme to control its color
           const SizedBox(height: 28),
           
            
           
             Text("Forgot Password?",
            style:TextStyle(
                  fontFamily: Fonts.FontName,
                   color: AppColors.primaryColor,
                  fontSize: 30.sp,
                   fontWeight: FontWeight.bold,
            )
             ),
            
         const  SizedBox(height:10),
              SizedBox(
            width: 331.w,
            height: 48.w,
             child:Text("Don't worry! It occurs. Please enter the email address linked with your account.",
            style:TextStyle(
                  fontFamily: Fonts.FontName,
                   color: AppColors.grey,
                  fontSize: 16.sp,
                   fontWeight: FontWeight.w500,
            )
             )
            ),
            const SizedBox(height:32),
            CustomeTextField(controller:_emailController,
            hintText: "Enter your email",

            ),
            const SizedBox(height:38),
            PrimaryButton(onPressed:()=>{},
            text: "Send Code",
            ),
          
             SizedBox(height:361.h),
             BottomTextSpan(
                firstText: "Remember Password?",
                secondText: "Login",
                onTap: ()=>{
                  GoRouter.of(context).push(AppRoutes.login)
                },
                
              ),
            

            

          ]
        ),
      ),
     )

   );
  }  
  

}