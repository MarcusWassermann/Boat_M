import 'package:boat_m/themes/colors.dart';
import 'package:boat_m/themes/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData getTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      primaryColor: AppColors.primaryColor,
      hintColor: AppColors.hintColor,
      textTheme: _buildTextTheme(base.textTheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonColor,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.appBarBackgroundColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      cardTheme: CardTheme(
        color: AppColors.cardColor,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.inputFillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      titleLarge: AppTextStyles.headlineMedium,
      titleMedium: AppTextStyles.headlineSmall,
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
    );
  }
}
