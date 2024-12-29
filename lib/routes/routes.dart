import 'package:flutter/material.dart';
import 'package:zuri_health_clone/auth/forgotpass.dart';
import 'package:zuri_health_clone/auth/login.dart';
import 'package:zuri_health_clone/auth/register.dart';
import 'package:zuri_health_clone/pages/homepage.dart';

class RouteGenerator {
  static const String homePage = "/";
  static const String loginPage = "/login";
  static const String registerPage = "/register";
  static const String forgotPasswordPage = "/forgot-password";

  RouteGenerator();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case registerPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => const Homepage());
      case forgotPasswordPage:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
      default:
        throw FormatException("Route Not Found");
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
