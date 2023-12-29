import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/core/utils/colors.dart';

ThemeData getTheme () {

  return ThemeData(
    scaffoldBackgroundColor: AppColors.backGroundColor ,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backGroundColor ,
      centerTitle: true
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
            color: AppColors.white,
            fontSize: 32,
            fontWeight: FontWeight.w700
            ),  
      displayMedium: GoogleFonts.lato(
            color: AppColors.white,
            fontSize: 16,
            ),
      displaySmall: GoogleFonts.lato(
                color: AppColors.lowOpacityText,
                fontSize: 16,
                ),  
      labelSmall: GoogleFonts.lato(color: AppColors.white , fontSize: 18 , fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(6))
                
              ),
    )

  );
}