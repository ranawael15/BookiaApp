import 'package:bookia_app/core/routes/routes.dart';
import 'package:bookia_app/features/auth/ui/login_screen.dart';
import 'package:bookia_app/features/auth/ui/register_screen.dart';
import 'package:bookia_app/features/homeFeature/ui/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {

    switch (settings.name){
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_)=>LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_)=>RegisterScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_)=>HomeScreen());

      default:
        return null;
    }
  }
}