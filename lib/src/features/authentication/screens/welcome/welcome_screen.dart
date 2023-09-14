import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student/src/common_widget/fade_in_animation/animation_design.dart';
import 'package:student/src/common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:student/src/constants/colors.dart';
import 'package:student/src/constants/image_strings.dart';
import 'package:student/src/constants/sizes.dart';
import 'package:student/src/constants/text_strings.dart';
import 'package:student/src/features/authentication/screens/login/login_screen.dart';
import 'package:student/src/features/authentication/screens/signup/signup_screen.dart';

import '../../../../common_widget/fade_in_animation/fade_in_animation_controller.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery=MediaQuery.of(context);
    var height= mediaQuery.size.height;
    var brightness= mediaQuery.platformBrightness;
    var isDarkMode= brightness==Brightness.dark;
    return  Scaffold(
      backgroundColor: isDarkMode? tSecondaryColor:tPrimaryColor,
      body:  Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate:
            TAnimatePosition(bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                rightBefore: 0,
                rightAfter: 0,
                topAfter: 0,
                topBefore: 0),
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                      tag: 'welcome_image',
                      child: Image(image: const AssetImage(tWelcomeScreenImage),height: height * 0.55)),
                    Column(
                     children: [
                       Text(tWelcomeTitle, style: Theme.of(context).textTheme.displaySmall,),
                       Text(tWelcomeSubTitle, style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center,),
                     ],
                   ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            child: OutlinedButton(
                                onPressed: (){
                                  Get.to(LoginScreen());
                                  },
                                child:Text(tLogin.toUpperCase()
                                ),
                            ),
                        ),
                        const SizedBox(width: 10.0,),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: (){
                                  Get.to(SignUpScreen());
                                },
                                child:  Text(tSignup.toUpperCase())),
                          )
                        ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
