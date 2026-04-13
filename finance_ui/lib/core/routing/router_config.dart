

import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/features/auth/auth_screen.dart';
import 'package:finance_ui/features/forgot_pass.dart';
import 'package:finance_ui/features/onBoard/onboard_screen.dart';
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


  ]

  );

}