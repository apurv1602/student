import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../repository/authentication_repository/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

 // final showPassword = Icon(LineAwesomeIcons.eye);

  /// TextField Validation

  //Call this Function from Design & it will do the rest
  Future<void> login() async {
    String? error = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());
    if(error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString(),));
    }

  }
}