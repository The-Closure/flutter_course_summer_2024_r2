import 'package:flutter/material.dart';
import 'package:tabadol_app/core/constants/image_manager.dart';
import 'package:tabadol_app/pages/splash_page.dart';

void main() {
  runApp(const TabadolApp());
}

class TabadolApp extends StatelessWidget {
  const TabadolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TechSaucePage(),
    );
  }
}

class TechSaucePage extends StatefulWidget {
  const TechSaucePage({super.key});

  @override
  State<TechSaucePage> createState() => _TechSaucePageState();
}

class _TechSaucePageState extends State<TechSaucePage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          ImageManager.techSauce,
        ),
      ),
    );
  }
}
