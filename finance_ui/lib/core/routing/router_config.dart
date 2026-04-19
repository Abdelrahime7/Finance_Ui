

import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/features/auth/auth_screen.dart';
import 'package:finance_ui/features/auth/new_pass.dart';
import 'package:finance_ui/features/auth/forgot_pass.dart';
import 'package:finance_ui/features/auth/password_Changed.dart';
import 'package:finance_ui/features/home/home_screen.dart';
import 'package:finance_ui/features/main/main_screen.dart';
import 'package:finance_ui/features/onBoard/onboard_screen.dart';
import 'package:finance_ui/features/otpVervication/otp_verf.dart';
import 'package:finance_ui/features/register/register_screem.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {

  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.onboard,
    routes: [
    GoRoute(path: AppRoutes.onboard,
     builder: (context, state) => const OnboardScreen()),

    GoRoute(path: AppRoutes.login, 
    builder: (context, state) =>  LoginScreen()),

    GoRoute(path: AppRoutes.register,
     builder: (context, state) => const RegisterScreen()),

     GoRoute(path: AppRoutes.forgotPassword,
     builder: (context, state) => const ForgetPasswordScreen()),

      GoRoute(path: AppRoutes.createPasswoord,
     builder: (context, state) => const CreatePassScreen()),

     GoRoute(path: AppRoutes.passwoordChanged,
     builder: (context ,state)=>const PasswordChangedScreen()
     ),
      GoRoute(path: AppRoutes.otpVerefication,
     builder: (context ,state)=>const VerificationScreen()
      ),
        GoRoute(path: AppRoutes.mainScreen,
     builder: (context ,state)=>const MainScreen()
      ),
        GoRoute(path: AppRoutes.gen,
     builder: (context ,state)=>const HomeScreen()
      ),


  ]

  );

}