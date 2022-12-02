import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

final defaultTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: AppColors.greenLight2,
      ),
    ),
  ),
);
