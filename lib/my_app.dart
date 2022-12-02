import 'package:finance_app/common/themes/default_theme.dart';
import 'package:finance_app/features/onboarding/onboarding_page.dart';
import 'package:finance_app/features/signup/singup_page.dart';
import 'package:finance_app/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'common/constants/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      home: Scaffold(
        //body: Container(),
        // body: SplashPage(),
        //body: OnboardingPage(),
        body: SingupPage(),
      ),
    );
  }
}
