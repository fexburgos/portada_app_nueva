import 'package:flutter/material.dart';
import 'package:portada_app_nueva/ui/core/ui/colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    ).copyWith(
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: Color(0xFF24786D),
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
          borderSide: BorderSide(color: Color(0xFFD6E4E0)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF24786D),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
      ),
    );
  }
}
