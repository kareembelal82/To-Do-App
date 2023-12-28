import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/strings.dart';
import 'package:to_do_app/features/Auth/presentation/screens/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return const MaterialApp(
      title: AppStrings.title,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}