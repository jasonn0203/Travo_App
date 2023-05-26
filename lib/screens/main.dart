import 'package:flutter/material.dart';
import 'package:travo_app/core/color.dart';

import 'package:travo_app/routers/routes.dart';
import 'package:travo_app/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travo App',
        //Default theme of the App
        theme: ThemeData(
          primaryColor: AppColor.primaryColor,
          scaffoldBackgroundColor: AppColor.mainBackgroundColor,
        ),
        //route config
        routes: routes,

        //NOTE Home
        home: const SplashScreen());
  }
}
