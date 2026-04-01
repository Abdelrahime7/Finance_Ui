import 'package:finance_ui/const/styling/theme.dart';
import 'package:finance_ui/features/onboard_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
    builder: (context, child) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme:AppThemes.lightTheme,
        home: child);
    },
      child:const  OnboardScreen()
      
    );
  }
}
