import 'package:flutter/material.dart';
import 'package:project/core/routing/routes.dart';
import 'package:project/feature/login/login_screen.dart';
import '../../feature/login/onbording/onbording_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnbordingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No Route Found$settings.name')),
          ),
        );
    }
  }
}
