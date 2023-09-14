import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:student/src/constants/colors.dart';
import '../../controllers/onboarding_controller.dart';


class OnBoardingScreen extends StatelessWidget{
   const OnBoardingScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final obController = OnBoardController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60.0,
                child: OutlinedButton(
                  onPressed: (){
                    obController.animateToNextSlide();
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20)
                  ),

                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: tDarkColor,shape: BoxShape.circle
                    ),
                    child: const Icon(Icons.arrow_forward_ios),
                  ),

            ) ),

           Positioned(
                top:50,
                right: 20,
                child:  TextButton(
                  onPressed: (){
                    obController.skip();
                  },
                  child: const Text('skip',style: TextStyle(color: Colors.blueGrey)),
                )
            ),

          Obx(
                ()=> Positioned(
              bottom: 10,
                child: AnimatedSmoothIndicator(
                  count: 3,
                  activeIndex: obController.currentPage.value,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5.0
                  ),
                  )
                ),
          )
        ],
      ),
    );
  }



}

