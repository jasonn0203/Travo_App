import 'package:flutter/material.dart';
import 'package:travo_app/screens/main_screen.dart';
import 'package:travo_app/screens/onboarding_screen.dart';
import 'package:travo_app/screens/splash_screen.dart';

//NOTE - Map là một cấu trúc dữ liệu trong Flutter,
// cho phép bạn lưu trữ các cặp key-value,
// trong đó String là kiểu dữ liệu của key và WidgetBuilder
// là kiểu dữ liệu của value.

final Map<String, WidgetBuilder> routes = {
  //Splash Screen
  SplashScreen.routePath: (context) => const SplashScreen(),

  //Onboarding Screen
  OnboardingScreen.routePath: (context) => const OnboardingScreen(),

  //Home Screen
  MainScreen.routePath: (context) => const MainScreen()
};
