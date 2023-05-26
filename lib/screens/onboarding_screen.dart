import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travo_app/helpers/asset_helper.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  //config route name
  static const String routePath = '/onboarding_screen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //NOTE - Using PageView to swipe between pages
      body: PageView(
        controller: _pageController,
        children: [
          _OnboardingItem(
              AssetHelper.onboarding1,
              'Book a flight',
              'Found a flight that matches your destination and schedule? Book it instantly.',
              Alignment.centerRight,
              'Next'),
          _OnboardingItem(
              AssetHelper.onboarding2,
              'Find a hotel room',
              'Select the day, book your room. We give you the best price.',
              Alignment.center,
              'Next'),
          _OnboardingItem(
              AssetHelper.onboarding3,
              'Enjoy your trip',
              'Easy discovering new places and share these between your friends and travel together.',
              Alignment.centerLeft,
              'Get Started'),
        ],
      ),
    );
  }
}

//NOTE - Because 3 onboarding screens have the same layout , so we build a widget that can reuse

// ignore: non_constant_identifier_names
Widget _OnboardingItem(String imagesPath, String title, String description,
    AlignmentGeometry alignment, String buttonText) {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: alignment,
          child: Image.asset(
            imagesPath,
            height: 410,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 25),
              Text(description, style: const TextStyle(fontSize: 14)),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ],
    ),
  );
}
