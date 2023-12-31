// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD_BKYvXLxN0n1usF1Z_16bNNfuOZynNf4',
    appId: '1:708024687058:web:19b4db13c3aba88951d00b',
    messagingSenderId: '708024687058',
    projectId: 'flutter-student-d445b',
    authDomain: 'flutter-student-d445b.firebaseapp.com',
    storageBucket: 'flutter-student-d445b.appspot.com',
    measurementId: 'G-WVG5K7HJV0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA43dy1RNy7-QgZXCWdgBmhGCNAhKNwzBs',
    appId: '1:708024687058:android:33aa213e64c055f551d00b',
    messagingSenderId: '708024687058',
    projectId: 'flutter-student-d445b',
    storageBucket: 'flutter-student-d445b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUZACfR_Q2hnBfAkZzVYkayOZHJg3kPQI',
    appId: '1:708024687058:ios:4dd2df315b14d7ba51d00b',
    messagingSenderId: '708024687058',
    projectId: 'flutter-student-d445b',
    storageBucket: 'flutter-student-d445b.appspot.com',
    androidClientId: '708024687058-nc2uv6a5sbl16erp6difrq2n9n5g4jbk.apps.googleusercontent.com',
    iosClientId: '708024687058-de6ch25lgsh1patfafrd5a0pq5s7l4db.apps.googleusercontent.com',
    iosBundleId: 'com.example.student',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBUZACfR_Q2hnBfAkZzVYkayOZHJg3kPQI',
    appId: '1:708024687058:ios:cbe48e04236208e351d00b',
    messagingSenderId: '708024687058',
    projectId: 'flutter-student-d445b',
    storageBucket: 'flutter-student-d445b.appspot.com',
    androidClientId: '708024687058-nc2uv6a5sbl16erp6difrq2n9n5g4jbk.apps.googleusercontent.com',
    iosClientId: '708024687058-hc3qm37cv1s1rro4adeniroq3b7e375p.apps.googleusercontent.com',
    iosBundleId: 'com.example.student.RunnerTests',
  );
}
