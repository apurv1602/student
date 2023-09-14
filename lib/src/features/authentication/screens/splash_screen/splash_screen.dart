import 'package:get/get.dart';
import 'package:student/src/common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:student/src/constants/colors.dart';
import 'package:student/src/constants/image_strings.dart';
import 'package:student/src/constants/sizes.dart';
import 'package:student/src/constants/text_strings.dart';
import 'package:student/src/common_widget/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter/material.dart';
import '../../../../common_widget/fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return  Scaffold(
      body: Stack(
        children: [

          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 0,topBefore: 0,
              leftAfter: 0,leftBefore: 0,
              bottomAfter: 50,bottomBefore: 50,
              rightAfter: 170,rightBefore: 350
            ),
            child:  Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
                color: tPrimaryColor,
              ),
          ),
          ),

          TFadeInAnimation(
                  durationInMs: 1600,
                  animate: TAnimatePosition(
                    topAfter: 80, topBefore: 80,
                      leftAfter: tDefaultSize,leftBefore:-80
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(tAppName, style: Theme.of(context).textTheme.displayLarge, ),
                        Text(tAppTagLine, style: Theme.of(context).textTheme.titleSmall,)
                      ],
                    ),
          ),

           TFadeInAnimation(
             durationInMs: 1600,
             animate: TAnimatePosition(
                 bottomAfter: 100,
                 bottomBefore: 0,
                 leftAfter: 130,
                 leftBefore: 130),
             child: const Image(image: AssetImage(tSplashImage),),),

           TFadeInAnimation(
                    durationInMs:  2400,
                    animate: TAnimatePosition(
                        bottomAfter: 30,
                        bottomBefore: 0,
                        rightAfter: tDefaultSize,
                        rightBefore: tDefaultSize),
                      child: Container(
                        width: tSplashContainerSize,
                        height: tSplashContainerSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor,
                        ),
                      ),
                ),

        ],
      ),
    );
  }
}

