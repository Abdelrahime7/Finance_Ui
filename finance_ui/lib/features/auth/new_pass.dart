
import 'package:finance_ui/const/styling/colors.dart';
import 'package:finance_ui/const/styling/fonts.dart';
import 'package:finance_ui/const/widgets/custom_textfield.dart';
import 'package:finance_ui/const/widgets/primary_button.dart';
import 'package:finance_ui/features/auth/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePassScreen extends StatefulWidget{

  const CreatePassScreen({super.key});
  
  @override
  State<StatefulWidget> createState() => _NewPassScreen();

}

class _NewPassScreen extends State<CreatePassScreen>{
    final _formKey = GlobalKey<FormState>();
     late TextEditingController _newPasswordController;
    late TextEditingController _confirmpasswordController;
    @override
  void initState() {
    _newPasswordController= TextEditingController();
    _confirmpasswordController=TextEditingController();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(

    body:Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 8),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
          const AppBackButton(),
          const SizedBox(height: 28),
           Text("Create new password",
            style:TextStyle(
                  fontFamily: Fonts.FontName,
                   color: AppColors.primaryColor,
                  fontSize: 30.sp,
                   fontWeight: FontWeight.bold,
            )
             ),
              const SizedBox(height: 10),
               SizedBox(
            width: 331.w,
            height: 48.w,
             child:Text("Your new password must be unique from those previously used.",
            style:TextStyle(
                  fontFamily: Fonts.FontName,
                   color: AppColors.grey,
                  fontSize: 16.sp,
                   fontWeight: FontWeight.w500,
            )
             )
            ),
             const SizedBox(height: 32),
             CustomeTextField(controller: _newPasswordController,
             hintText: "New Password",
             ),
              const SizedBox(height: 10),
                CustomeTextField(controller: _confirmpasswordController,
             hintText: "Confirm Password",
             ),
              const SizedBox(height: 38),
              PrimaryButton(onPressed: ()=>{},
              text:"Reset Password",
              )




          ]
        ),
      ),
    )

   );

   
  }

}
