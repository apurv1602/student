import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student/src/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:student/src/features/authentication/screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find => Get.find();


  RxBool animate = false.obs;

  Future startSplashAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value= true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value= false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(()=>const welcome_screen());
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const welcome_screen(),));
  }

  Future startAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value= true;
  }

}