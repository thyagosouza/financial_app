import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double sizeH;
  PrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
    required this.sizeH,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final BorderRadius _borderRadius = BorderRadius.circular(sizeH / 2);
    return Container(
      width: double.infinity,
      height: sizeH,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: onPressed != null
              ? AppColors.grandientSplash
              : AppColors.grandientSplashLight,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: _borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.buttonText18.copyWith(color: AppColors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: _borderRadius,
          ),
        ),
      ),
    );
  }
}
