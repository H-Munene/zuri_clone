import 'package:flutter/material.dart';
import 'package:zuri_health_clone/auth/forgotpass.dart';
import 'package:zuri_health_clone/auth/login.dart';
import 'package:zuri_health_clone/auth/register.dart';
import 'package:zuri_health_clone/pages/home.dart';
import 'package:zuri_health_clone/pages/navigationmenu.dart';

class RouteGenerator {
  static const String homePage = "/";
  static const String loginPage = "/login";
  static const String registerPage = "/register";
  static const String forgotPasswordPage = "/forgot-password";
  static const String navigationMenu = "/navigationMenu";

  RouteGenerator();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case registerPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case forgotPasswordPage:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
      case navigationMenu:
        return MaterialPageRoute(builder: (_) => const NavigationMenu());

      default:
        throw FormatException("Route Not Found");
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
