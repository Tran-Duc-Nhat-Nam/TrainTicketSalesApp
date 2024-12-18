import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/common/styles/colors.dart';

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: AppColors.primaryColor,
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryTextColor,
    surface: AppColors.backgroundColor,
    surfaceContainer: AppColors.containerColor,
    onPrimary: AppColors.primaryTitleColor,
    onPrimaryContainer: AppColors.primaryTextColor,
    onSecondary: AppColors.primarySubTextColor,
    tertiary: AppColors.checkboxBorderColor,
  ),
  fontFamily: GoogleFonts.inter().fontFamily,
  useMaterial3: true,
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData appDarkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: AppDarkColors.primaryColor,
    primary: AppDarkColors.primaryColor,
    secondary: AppDarkColors.secondaryTextColor,
    surface: AppDarkColors.backgroundColor,
    surfaceContainer: AppDarkColors.containerColor,
    onPrimary: AppDarkColors.primaryTitleColor,
    onPrimaryContainer: AppDarkColors.primaryTextColor,
    onSecondary: AppDarkColors.primarySubTextColor,
    tertiary: AppDarkColors.checkboxBorderColor,
  ),
  fontFamily: GoogleFonts.inter().fontFamily,
  useMaterial3: true,
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
