import 'package:bud/core/routing/platform_page_route.dart';
import 'package:bud/core/routing/undefined_route_screen.dart';
import 'package:bud/src/Auth/Presentation/forgot_password_screen.dart';
import 'package:bud/src/Auth/Presentation/login_screen.dart';
import 'package:bud/src/Auth/Presentation/register_screen.dart';
import 'package:bud/src/Profile/Presentation/profile_screen.dart';
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
