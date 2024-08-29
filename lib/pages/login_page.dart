import 'package:flutter/material.dart';
import 'package:tabadol_app/core/constants/colors_manager.dart';
import 'package:tabadol_app/core/constants/image_manager.dart';
import 'package:tabadol_app/core/constants/strings_manager.dart';
import 'package:tabadol_app/core/constants/styles_manager.dart';
import 'package:tabadol_app/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.pageBody});
  final Widget pageBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.skinColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              top: 11,
              bottom: 5,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(ImageManager.authHeader),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringsManager.login,
                style: StylesManager.getJawadtautRegularStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          pageBody,
        ],
      ),
    );
  }
}

class LoginPageBody1 extends StatelessWidget {
  const LoginPageBody1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 38,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: screenWidth / 2.6,
                    child: const TextFields(
                      title: 'الكنية',
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                    width: screenWidth / 2.6,
                    child: const TextFields(
                      title: 'الاسم',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const TextFields(
                title: 'اسم المستخدم',
              ),
              const SizedBox(
                height: 15,
              ),
              const TextFields(
                title: 'كلمة المرور',
                isPasswordField: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const TextFields(
                title: 'تأكيد كلمة المرور',
                isPasswordField: true,
              ),
              SizedBox(
                height: screenHeight / 16.88,
              ),
              AppButton(
                screenWidth: screenWidth,
                title: 'متابعة',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(
                        pageBody: LoginPageBody2(),
                      ),
                    ),
                  );
                },
                backgroundColor: ColorsManager.orangeColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.screenWidth,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
  });

  final double screenWidth;
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(screenWidth / 1.21, 55),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
        ),
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: StylesManager.getJawadtautRegularStyle(
          fontSize: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}

class LoginPageBody2 extends StatelessWidget {
  const LoginPageBody2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 38,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 53,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                StringsManager.enterPhoneNumber,
                style: StylesManager.getJawadtautRegularStyle(
                  fontSize: 25,
                  color: ColorsManager.greyColor2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          const TextFields(
            title: 'رقم الهاتف',
          ),
          SizedBox(
            height: screenHeight / 3.22,
          ),
          AppButton(
            screenWidth: screenWidth,
            title: 'إرسال الرمز',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(
                    pageBody: LoginPageBody3(),
                  ),
                ),
              );
            },
            backgroundColor: ColorsManager.orangeColor,
          ),
        ],
      ),
    );
  }
}

class LoginPageBody3 extends StatelessWidget {
  const LoginPageBody3({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 85,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                StringsManager.enterverificationCode,
                style: StylesManager.getJawadtautRegularStyle(
                  fontSize: 25,
                  color: ColorsManager.greyColor2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          const TextFields(
            title: 'رمز التحقق',
          ),
          const SizedBox(
            height: 51,
          ),
          RichText(
            textDirection: TextDirection.rtl,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'لم يصلك الرمز؟',
                  style: StylesManager.getJawadtautRegularStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(text: '  '),
                TextSpan(
                  text: 'إرسال الرمز مرة أخرى',
                  style: StylesManager.getJawadtautRegularStyle(
                    fontSize: 20,
                    color: ColorsManager.orangeColor,
                  ).copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight / 3.22,
          ),
          AppButton(
            screenWidth: screenWidth,
            title: 'إرسال الرمز',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            backgroundColor: ColorsManager.orangeColor,
          ),
        ],
      ),
    );
  }
}

class TextFields extends StatefulWidget {
  const TextFields({
    super.key,
    required this.title,
    this.isPasswordField = false,
  });
  final String title;
  final bool isPasswordField;

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.title,
              style: StylesManager.getJawadtautRegularStyle(
                fontSize: 25,
                color: ColorsManager.dirtyColor,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          cursorColor: Colors.black,
          obscureText: widget.isPasswordField ? hidePassword : false,
          cursorWidth: 1,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            prefixIcon: widget.isPasswordField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    icon: Icon(
                      hidePassword ? Icons.visibility : Icons.visibility_off,
                      color: ColorsManager.visibilityIconColor,
                    ),
                  )
                : null,
            filled: true,
            fillColor: Colors.white,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.offBrownColor,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10,
                ),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
