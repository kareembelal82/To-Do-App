import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/core/utils/assets.dart';
import 'package:to_do_app/core/utils/colors.dart';
import 'package:to_do_app/core/utils/strings.dart';
import 'package:to_do_app/features/Auth/presentation/screens/on_boarding_screens/on_boarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigate();
  }
  void navigate () {
    Future.delayed(const Duration(seconds: 3) , (){
      Navigator.push(context, MaterialPageRoute(builder: (_){
        return OnBoardingScreen();
      }));
    } );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(AppAssets.logo),
          const SizedBox(height: 18,),
          Text(AppStrings.appName, 
            style: GoogleFonts.lato(
              color: AppColors.white,
              fontSize: 40 ,
              fontWeight: FontWeight.bold
            ),
            
            ),
        
        ],),
      ),
    );
  }
}