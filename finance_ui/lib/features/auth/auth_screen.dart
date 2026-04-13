import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:finance_ui/const/widgets/custom_textfield.dart';
import 'package:finance_ui/const/widgets/primary_button.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/features/auth/widgets/back_button.dart';
import 'package:finance_ui/features/auth/widgets/or_Login.dart';
import 'package:finance_ui/features/auth/widgets/social_options.dart';
import 'package:finance_ui/features/auth/widgets/text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  
   const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   
   final _formKey = GlobalKey<FormState>();
   
  bool _ispassword=true;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
  
   return SafeArea(child:
   Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Form(
        key: _formKey,
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
            controller: _emailController,
            validator: (value){
              if(value!.isEmpty)
              {
             return "Email shoud not be empty" ;
              }
               return null;
            },
            hintText:"Enter your email",
            ispassword: false,
           width: 331.w,
            height: 50.h
           
        
           ),
           SizedBox(height:15.h),
           CustomeTextField(
            controller: _passwordController,
             validator: (value){
              if(value!.isEmpty)
              {
             return "password shoud not be empty" ;
              }
              if (value.length < 8)
              {
                return "Password must be at least 8 characters long";
              }
               return null;
            },
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
                          InkWell(
                            onTap: (){
                              GoRouter.of(context).push(AppRoutes.forgotPassword);
                            },
                            child: Text("Forgot Password?",
                               style:TextStyle(
                                                    fontFamily: Fonts.FontName,
                                                     color: AppColors.grey,
                                                    fontSize: 14.sp,
                                                     fontWeight: FontWeight.w500,
                               )
                               ),
                          )
                           ),
              
             
          
              SizedBox(height:30.h),
              PrimaryButton(text: "Login",
              onPressed: ()=>{
                if(_formKey.currentState!.validate())
                {}
               
              },
              ),
               SizedBox(height:35.h),
              OrLogin_Reg(text: "Or Login with"),
              SizedBox(height:22.h),
              SocialOptions(),
               SizedBox(height:155.h),
            
            BottomTextSpan(
              firstText: "Don't have an account?",
              secondText: "Register",
              onTap: ()=>{
                GoRouter.of(context).push(AppRoutes.register)
              }
              ,
            )
          ] 
        ),
      ),
    )
   )
   ); 
  }
}
