import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../di/dependancy_injection.dart';
import 'routes.dart';
import '../../feature/home/ui/home_screen.dart';
import '../../feature/login/logic/cubit/login_cubit.dart';
import '../../feature/signup/logic/cubit/signup_cubit.dart';
import '../../feature/signup/ui/sign_up_screen.dart';
import '../../feature/login/login_screen.dart';
import '../../feature/login/onbording/onbording_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnbordingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No Route Found$settings.name')),
          ),
        );
    }
  }
}
