import 'package:flutter/material.dart';
import 'package:student/src/constants/image_strings.dart';
import 'package:student/src/constants/sizes.dart';
import 'package:student/src/constants/text_strings.dart';
import 'package:student/src/features/authentication/screens/signup/signup_widget/signup_form_widget.dart';
import '../../../../common_widget/form/form_header_widget.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child:    Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                const FormHeaderWidget(image: tWelcomeScreenImage, title: tSignUpTitle, subtitle: tSignUpSubTitle, imageHeight: 0.3,heightBetween: 10,),
                //form
                const SignUpFormWidget(),
                //footer
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('OR'),
                    const SizedBox(height: tFormHeight-20,),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon:  const Image(image: AssetImage(tGoogleLogoImage),width: 20.0,),
                        onPressed: (){},
                        label:  const Text(tSignInWithGoogle)),
                      ),
                      const SizedBox(height: tFormHeight-20,),
                      TextButton(onPressed: (){},
                          child: Text.rich(TextSpan(
                            text: tAlreadyHaveAnAccount,
                              style: Theme.of(context).textTheme.bodyLarge,
                              children:const [
                                TextSpan(text: tLogin,style: TextStyle(color: Colors.blue)),
                              ]
                          ))
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

