import 'package:flutter/material.dart';
import 'package:student/src/constants/image_strings.dart';
import 'package:student/src/constants/sizes.dart';
import 'package:student/src/constants/text_strings.dart';
import '../../../../common_widget/form/form_header_widget.dart';
import 'login_widget/login_footer_widget.dart';
import 'login_widget/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body:
        SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child:   const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //section 1
                  FormHeaderWidget(image: tWelcomeScreenImage, title: tLoginTitle, subtitle: tLoginSubTitle, imageHeight: 0.3,heightBetween: 10,),
                  //section 2
                  LoginForm(),
                  //section 3
                  LoginFooterWidget(),
                  //SocialFooter(text1: tDontHaveAnAccount, text2: tSignup, onPressed: () => Get.off(() => const SignupScreen())),
                ],
              ),
            )),
      ),
    );
  }
}






