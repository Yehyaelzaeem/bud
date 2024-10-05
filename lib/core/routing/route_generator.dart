import 'package:bud/core/routing/platform_page_route.dart';
import 'package:bud/core/routing/undefined_route_screen.dart';
import 'package:bud/src/Auth/Presentation/Forgot_password_Screen.dart';
import 'package:bud/src/Auth/Presentation/Login_Screen.dart';
import 'package:bud/src/Auth/Presentation/Register_Screen.dart';
import 'package:bud/src/Profile/Presentation/Profile_Screen.dart';
import 'package:flutter/cupertino.dart';
import '../../src/on_boarding/presentation/onboarding_screen.dart';
import 'routes.dart';

class RouteGenerator {
  static Route generateBaseRoute(RouteSettings settings) {
    Map? arguments = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return platformPageRoute(OnBoardingScreen());
      case Routes.loginscreen:
        return platformPageRoute(LoginScreen());
      case Routes.forgotpasswordscreen:
        return platformPageRoute(ForgotPasswordScreen());
      case Routes.registerscreen:
        return platformPageRoute(RegisterScreen());
      case Routes.profilescreen:
        return platformPageRoute(ProfileScreen());

      default:
        return platformPageRoute(const UndefinedRouteScreen());
    }
  }
}
