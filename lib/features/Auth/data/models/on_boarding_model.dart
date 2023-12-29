import 'package:to_do_app/core/utils/assets.dart';
import 'package:to_do_app/core/utils/strings.dart';

class OnBoardingModel{

  final String image ;
  final String title ;
  final String subTitle ;

  OnBoardingModel({
    required this.image, 
    required this.title, 
    required this.subTitle
    });

  static List <OnBoardingModel> onBoardingScreenList =  [
  OnBoardingModel(image: AppAssets.on1, title: AppStrings.onBoardingTitle1, subTitle: AppStrings.onBoardingSubTitle1),
  OnBoardingModel(image: AppAssets.on2, title: AppStrings.onBoardingTitle2, subTitle: AppStrings.onBoardingSubTitle2),
  OnBoardingModel(image: AppAssets.on3, title: AppStrings.onBoardingTitle3, subTitle: AppStrings.onBoardingSubTitle3)
];  
}



