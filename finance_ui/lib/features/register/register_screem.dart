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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  
  @override
  State<RegisterScreen> createState()  =>_RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

@override
void initState() {
  super.initState();
  _usernameController = TextEditingController();
  _emailController = TextEditingController();
  _passwordController = TextEditingController();
  _confirmPasswordController = TextEditingController();
}



  @override
  Widget build(BuildContext context) {
  return 
     SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
              key: _formKey,
             child:SingleChildScrollView( 
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const AppBackButton(),
             const SizedBox(height:28),
              SizedBox(
              width: 331.w,
              child:Text("Hello! Register to get started",
              style:TextStyle(
                    fontFamily: Fonts.FontName,
                     color: AppColors.primaryColor,
                    fontSize: 30.sp,
                     fontWeight: FontWeight.bold,
              )
              )
            ),
            const SizedBox(height:32),
            CustomeTextField(controller: _usernameController,
            hintText: "Username",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              return null;
    
            } ,
              
            ),
            const SizedBox(height:12),
            CustomeTextField(controller: _emailController,
            hintText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
    
            } ,
              
            ),
              const SizedBox(height:12),
            CustomeTextField(controller: _emailController,
            hintText: "Password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
    
    
              return null;
    
            } ,
            ),
              const SizedBox(height:12),
            CustomeTextField(controller: _confirmPasswordController,
            hintText: "Confirm Password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your confirm password';
              }
              if (value != _passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
    
    
            }
            ),
                const SizedBox(height:30),
             PrimaryButton(
              text: "Register",
              onPressed: () {}
             ),
                 const SizedBox(height:35),
            OrLogin_Reg(text:"Or Register with",),
                 const SizedBox(height:22),
           SocialOptions(),
             // IconThem
                            SizedBox(height:54.h),
    
                BottomTextSpan(
                firstText: "Already have an account?",
                secondText: "Login Now",
                onTap: ()=>{
                  GoRouter.of(context).push(AppRoutes.login)
                }
                ,
              )
             
                
              ]
            ),
          ),
        )
      
      ),
    ),
  );
  
  }

    
  

 }
  

 