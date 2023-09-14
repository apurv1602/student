import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student/src/features/authentication/controllers/signup_controller.dart';
import 'package:student/src/features/authentication/model/user_model.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'package:student/src/repository/authentication_repository/authentication_repository.dart';

import '../../forget_password/forget_password_otp/otp_screen.dart';


class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    //var authenticationRepository = Get.put(AuthenticationRepository());
    //final controller= Get.put(AuthenticationRepository());

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(label: Text(tFullName), prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(label: Text(tEmail), prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(label: Text(tPhoneNo), prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(label: Text(tPassword), prefixIcon: Icon(Icons.fingerprint)),
            ),
            const SizedBox(height: tFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    //email-and-password
                    // SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                    //phone -authentication
                    // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                    // Get.to(()=> const OTPScreen());

                    final user = UserModel(
                        fullName: controller.fullName.text.trim(),
                        email: controller.email.text.trim(),
                        phoneNo: controller.phoneNo.text.trim(),
                        password: controller.password.text.trim()
                    );
                    SignUpController.instance.createUser(user);

                  }
                 },
                child: Text(tSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
