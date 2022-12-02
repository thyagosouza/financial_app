import 'package:finance_app/features/onboarding/onboarding_page.dart';
import 'package:finance_app/features/signup/singup_page.dart';
import 'package:finance_app/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //body: Container(),
        // body: SplashPage(),
        //body: OnboardingPage(),
        body: SingupPage(),
      ),
    );
  }
}
