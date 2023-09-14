import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../model/model_onboarding.dart';
import '../screens/onboarding/onboarding_page_widget.dart';

class OnBoardController extends GetxController{

  final controller= LiquidController();
  RxInt currentPage=0.obs;

  final pages=[
    OnBoardingPageWidget(model: OnBoardingModel(
      image: tOnBoardingImage1,
      title: tOnBoardingTitle1,
      subTitle: tOnBoardingSubTitle1,
      counterText: tOnBoardingCounter1,
      bgColor: tOnBoardingPage1Color,
    )),

    OnBoardingPageWidget(model: OnBoardingModel(
      image: tOnBoardingImage2,
      title: tOnBoardingTitle2,
      subTitle: tOnBoardingSubTitle2,
      counterText: tOnBoardingCounter2,
      bgColor: tOnBoardingPage2Color,
    )),

    OnBoardingPageWidget(model: OnBoardingModel(
      image: tOnBoardingImage3,
      title: tOnBoardingTitle3,
      subTitle: tOnBoardingSubTitle3,
      counterText: tOnBoardingCounter3,
      bgColor: tOnBoardingPage3Color,
    ))
  ];


  skip()=> controller.jumpToPage(page: 2);

  animateToNextSlide(){
    int nextPage = controller.currentPage+1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangeCallback(int activePageIndex)=> currentPage.value= activePageIndex;
}