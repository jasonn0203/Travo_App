import 'package:flutter/material.dart';
import 'package:travo_app/helpers/asset_helper.dart';
import 'package:travo_app/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  //router name
  static const String routePath = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: Delay 2 seconds then navigate to Onboarding Screen
    super.initState();
    navigateToOnboardingScreen();
  }

  //NOTE - Method that navigate to Onboarding Screen after 2 secs
  void navigateToOnboardingScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, OnboardingScreen.routePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //NOTE - Stack : The widget that places first will be placed below the next widget that places later.
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
