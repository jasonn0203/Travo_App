import 'package:flutter/material.dart';
import 'package:travo_app/helpers/asset_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  //router name
  static const String routePath = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AssetHelper.splashBackground,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              AssetHelper.splashCircle,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
