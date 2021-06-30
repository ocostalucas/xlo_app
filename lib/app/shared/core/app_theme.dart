import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        primaryColor: AppColors.primary,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.primary,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: inputDecorationTheme,
      );

  static InputDecorationTheme get inputDecorationTheme {
    OutlineInputBorder border(Color color, double width) => OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: color,
            width: width,
          ),
        );

    return InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      enabledBorder: border(AppColors.border, 1),
      disabledBorder: border(AppColors.border, .1),
      focusedBorder: border(AppColors.black, 1.5),
      errorBorder: border(AppColors.red, 1.5),
      focusedErrorBorder: border(AppColors.red, 1.5),
      errorStyle: TextStyle(
        color: AppColors.red,
      ),
      hintStyle: AppTypography.body.copyWith(color: AppColors.gray),
    );
  }
}
