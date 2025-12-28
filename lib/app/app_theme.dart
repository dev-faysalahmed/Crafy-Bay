import 'package:crafty_bay/app/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData get lightTheme{
    return ThemeData(
      brightness: Brightness.light,
      colorSchemeSeed: AppColor.themeColor,
      scaffoldBackgroundColor: Colors.white,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColor.themeColor
      ),
      inputDecorationTheme: _getInputDecorationThemeData(),
      filledButtonTheme: _getFilledButtonTheme(),
    );
  }


  static ThemeData get dartTheme{
    return ThemeData(
        brightness: Brightness.dark,
      colorSchemeSeed: AppColor.themeColor,
        progressIndicatorTheme: ProgressIndicatorThemeData(
            color: AppColor.themeColor
        ),
      inputDecorationTheme: _getInputDecorationThemeData(),
      filledButtonTheme: _getFilledButtonTheme(),
    );
  }


  static InputDecorationTheme _getInputDecorationThemeData(){
    return InputDecorationTheme(
      hintStyle: TextStyle(fontWeight: .w300),
      contentPadding: .symmetric(horizontal: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.themeColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.themeColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.themeColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
    );
  }
  static FilledButtonThemeData _getFilledButtonTheme(){
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
          fixedSize: Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(
            borderRadius: .circular(8),
          ),
          backgroundColor: AppColor.themeColor,
          textStyle: TextStyle(fontWeight: .w700)
      ),
    );
  }

}