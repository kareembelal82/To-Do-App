// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/utils/colors.dart';
import 'package:to_do_app/core/utils/strings.dart';
import 'package:to_do_app/features/Auth/data/models/on_boarding_model.dart';
import 'package:to_do_app/features/Task/presentation/screens/home/home_page.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 12),
          child: PageView.builder(
            itemCount: 3,
            controller: pageController,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Align(
            alignment: Alignment.centerLeft,
            child: index != 2 ? TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage() ;
                } )) ;
              },
              child: Text(AppStrings.skip , style: Theme.of(context).textTheme.displaySmall
              ),
            ) : const SizedBox(height: 48,)
          ),
          const SizedBox(height: 16,),
          //image
          Image.asset(OnBoardingModel.onBoardingScreenList[index].image),
          const SizedBox(height: 16,),
          //dots
          SmoothPageIndicator(
            controller: pageController, 
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: AppColors.primaryColor,
              dotHeight: 10 , 
              dotWidth: 10 ,
              spacing: 8 ,
            ),
            
            ),
          const SizedBox(height: 50,),
          //title
          Text(OnBoardingModel.onBoardingScreenList[index].title , style: Theme.of(context).textTheme.displayLarge
          ),
          const SizedBox(height: 42,),            
          //subtitle
          Text(OnBoardingModel.onBoardingScreenList[index].subTitle , style: Theme.of(context).textTheme.displayMedium  
          ),
          const SizedBox(height: 90,),
                        //row
                        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            index != 0 ? TextButton(
              onPressed: () {
                pageController.previousPage(duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
              },
              child: Text(AppStrings.back , style: Theme.of(context).textTheme.displaySmall
                          ),
            )  : const SizedBox(height: 24,),
            ElevatedButton(
              onPressed: (){
                index != 2 ?pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.fastEaseInToSlowEaseOut)
                : Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage() ;
                }));
              },
              style: Theme.of(context).elevatedButtonTheme.style, 
              child:  Text(index != 2 ? AppStrings.next : AppStrings.getStarted , style: Theme.of(context).textTheme.labelSmall)
               )
          ],
                        )
                ],
              );
            },
          ),
        ),
      ),
      
    );
  }
}