import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:student/firebase_options.dart';
import 'package:student/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:student/src/features/core/screens/dashboard/dashboard.dart';
import 'package:student/src/features/core/screens/profile/profile_screen.dart';
import 'package:student/src/repository/authentication_repository/authentication_repository.dart';
import 'package:student/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      themeMode: ThemeMode.system,
      home:  //const SplashScreen(),
      const Scaffold(body: Center(child: CircularProgressIndicator(),),),
    );
  }
}

