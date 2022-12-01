import 'package:finance_app/common/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.grandientSplash,
        ),
      ),
      child: Center(
        child: Text(
          'financy',
          style: AppTextStyles.bigText.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
