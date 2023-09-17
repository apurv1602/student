import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:student/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:student/src/features/core/screens/dashboard/dashboard.dart';
import 'package:student/src/repository/authentication_repository/exception/singup_email_password_failure.dart';

import 'exception/login_email_password.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();


  //Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;


  //Will be load when app launches this func will be called and set the firebaseUser state
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }


  /// If we are setting initial screen from here
  /// then in the main.dart => App() add CircularProgressIndicator()
  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const welcome_screen()) : Get.offAll(() => const DashBoard());
  }




  //FUNC
  Future<void> phoneAuthentication(String phoneNo) async {

   await _auth.verifyPhoneNumber(
        phoneNumber : phoneNo,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },

        codeSent: (verificationId, resendToken){
          this.verificationId.value= verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId){
          this.verificationId.value= verificationId;
        },
        verificationFailed: (e){
          if(e.code == 'invalid-phone-number'){
            Get.snackbar('Error', 'the provided phone number is not valid');
          }
          else{
            Get.snackbar('Error', 'Something went wrong');
          }
        },
    );
  }
  
  Future<bool> verifyOTP(String otp) async {

   var credentials= await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
   return credentials.user !=  null?true:false;
  }
  

  Future<String?> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const DashBoard()) : Get.to(() => const welcome_screen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      return ex.message;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }


  Future<String?> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = LogInWithEmailAndPasswordFailure.fromCode(e.code);
      return ex.message;
    } catch (_) {
      const ex = LogInWithEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }



  Future<void> logout() async => await _auth.signOut();
}

