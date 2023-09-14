import 'package:get/get.dart';
import 'package:student/src/repository/authentication_repository/authentication_repository.dart';

import '../../core/screens/dashboard/dashboard.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async{
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified?Get.offAll(const DashBoard()): Get.back();
  }
}