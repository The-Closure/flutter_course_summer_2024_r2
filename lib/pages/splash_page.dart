import 'package:flutter/material.dart';
import 'package:tabadol_app/core/constants/colors_manager.dart';
import 'package:tabadol_app/core/constants/image_manager.dart';
import 'package:tabadol_app/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const OnboardingPage();
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.orangeColor,
      body: Center(
        child: Image.asset(
          ImageManager.appLogo,
        ),
      ),
    );
  }
}
