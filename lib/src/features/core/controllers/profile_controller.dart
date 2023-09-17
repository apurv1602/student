
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:student/src/features/authentication/model/user_model.dart';
import 'package:student/src/repository/authentication_repository/authentication_repository.dart';

import '../../../repository/user_repository/user_repository.dart';

class ProfileController extends GetxController{
  static ProfileController get instance=> Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  getUserData(){
    final email = _authRepo.firebaseUser.value?.email;
    if(email != null){
      return _userRepo.getUserDetails(email);
    }
    else {
      Get.snackbar("Error", "login to continue");
    }
  }

  Future<List<UserModel>> getAllUser() async =>  await _userRepo.allUser();

  updateRecord(UserModel user) async{
    await _userRepo.updateUserRecord(user);
  }

}