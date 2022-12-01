import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF63b5af),
            Color(0xFF438883),
          ],
        ),
      ),
      child: Center(
        child: Text(
          'financy',
          style: TextStyle(
              fontSize: 50, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
