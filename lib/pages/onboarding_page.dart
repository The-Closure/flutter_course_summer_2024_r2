import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabadol_app/core/constants/colors_manager.dart';
import 'package:tabadol_app/core/constants/image_manager.dart';
import 'package:tabadol_app/core/constants/strings_manager.dart';
import 'package:tabadol_app/core/constants/styles_manager.dart';
import 'package:tabadol_app/pages/login_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<Widget> onboardingPages = [
    const OnboardingPage1(),
    const OnboardingPage2(),
    const OnboardingPage3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: onboardingPages.length,
        itemBuilder: (BuildContext context, int index) {
          return onboardingPages[index];
        },
      ),
    );
  }
}

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: ColorsManager.onboardingBackgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 51,
            child: SvgPicture.asset(
              height: screenHeight,
              ImageManager.lampSvg,
              fit: BoxFit.scaleDown,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  textAlign: TextAlign.end,
                  StringsManager.onboarding1Text,
                  style: StylesManager.getJawadtautRegularStyle(
                    fontSize: 30,
                    color: ColorsManager.brownTextColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                          10,
                        ),
                        right: Radius.circular(
                          10,
                        ),
                      ),
                      color: ColorsManager.offBrownColor,
                    ),
                    width: 20,
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorsManager.brownTextColor,
                      ),
                      width: 13,
                      height: 13,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsManager.brownTextColor,
                    ),
                    width: 13,
                    height: 13,
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              ImageManager.onboarding1,
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: ColorsManager.onboardingBackgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 51,
            child: SvgPicture.asset(
              height: screenHeight,
              ImageManager.lampSvg,
              fit: BoxFit.scaleDown,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  textAlign: TextAlign.end,
                  StringsManager.onboarding2Text,
                  style: StylesManager.getJawadtautRegularStyle(
                    fontSize: 30,
                    color: ColorsManager.brownTextColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: ColorsManager.brownTextColor,
                      shape: BoxShape.circle,
                    ),
                    width: 13,
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(
                            10,
                          ),
                          right: Radius.circular(
                            10,
                          ),
                        ),
                        color: ColorsManager.offBrownColor,
                      ),
                      width: 20,
                      height: 13,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsManager.brownTextColor,
                    ),
                    width: 13,
                    height: 13,
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              ImageManager.onboarding2,
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage3 extends StatefulWidget {
  const OnboardingPage3({super.key});

  @override
  State<OnboardingPage3> createState() => _OnboardingPage3State();
}

class _OnboardingPage3State extends State<OnboardingPage3> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(
            pageBody: LoginPageBody1(),
          ),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            radius: 0.9,
            colors: [
              ColorsManager.gradientColor1,
              ColorsManager.gradientColor2,
              ColorsManager.gradientColor3,
            ],
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 95,
              left: 101,
              child: Image.asset(
                ImageManager.onboarding3Book1,
              ),
            ),
            Positioned(
              top: 433.50,
              left: 24.50,
              child: Image.asset(
                ImageManager.onboarding3Book2,
              ),
            ),
            Positioned(
              top: 476.65,
              right: 14.3,
              child: Image.asset(
                ImageManager.onboarding3Book3,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    textAlign: TextAlign.end,
                    StringsManager.onboarding2Text,
                    style: StylesManager.getJawadtautRegularStyle(
                      fontSize: 30,
                      color: ColorsManager.brownTextColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: ColorsManager.brownTextColor,
                        shape: BoxShape.circle,
                      ),
                      width: 13,
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsManager.brownTextColor,
                        ),
                        width: 13,
                        height: 13,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(
                            10,
                          ),
                          right: Radius.circular(
                            10,
                          ),
                        ),
                        color: ColorsManager.offBrownColor,
                      ),
                      width: 20,
                      height: 13,
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                ImageManager.onboarding3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
