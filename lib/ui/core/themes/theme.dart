import 'package:flutter/material.dart';
import 'package:portada_app_nueva/ui/core/ui/colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    ).copyWith(
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
      ),
    );
  }
}
