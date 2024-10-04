import 'package:bud/core/routing/platform_page_route.dart';
import 'package:bud/core/routing/undefined_route_screen.dart';
import 'package:flutter/cupertino.dart';
import '../../src/on_boarding/presentation/onboarding_screen.dart';
import 'routes.dart';

class RouteGenerator {
  static Route generateBaseRoute(RouteSettings settings) {
    Map? arguments = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
        case Routes.onBoardingScreen:
          return platformPageRoute( OnBoardingScreen());

      default:
        return platformPageRoute(const UndefinedRouteScreen());
    }
  }
}
