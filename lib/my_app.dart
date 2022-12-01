import 'package:finance_app/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //body: Container(),
        body: SplashPage(),
      ),
    );
  }
}
