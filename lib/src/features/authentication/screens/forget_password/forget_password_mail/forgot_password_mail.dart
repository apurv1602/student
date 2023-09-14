import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student/src/common_widget/form/form_header_widget.dart';
import 'package:student/src/constants/image_strings.dart';
import 'package:student/src/constants/sizes.dart';
import 'package:student/src/constants/text_strings.dart';
import 'package:student/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child:   Column(
                children: [
                  const SizedBox(height: tDefaultSize*3,),
                  const FormHeaderWidget(image: tWelcomeScreenImage,
                      title: tForgetPassword,
                      subtitle: tForgetPasswordSubTitle,
                      imageHeight: 0.2,
                      heightBetween: 30.0,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: tFormHeight,),
                  Form(child: Column(children: [
                    TextFormField(
                      decoration:  const InputDecoration(
                        label: Text(tEmail),
                        hintText: tEmail,
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            Get.to(()=>const OTPScreen());
                          },
                          child: const Text(tNext)),
                    )
                  ],))

                ],
              ),
            ),
          ),

      ),
    );
  }
}
