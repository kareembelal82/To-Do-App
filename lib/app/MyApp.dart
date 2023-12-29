import 'package:flutter/material.dart';
import 'package:to_do_app/core/Themes/Theme.dart';
import 'package:to_do_app/core/utils/strings.dart';
import 'package:to_do_app/features/Auth/presentation/screens/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: AppStrings.title,
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      home: const SplashScreen(),
    );
  }
}