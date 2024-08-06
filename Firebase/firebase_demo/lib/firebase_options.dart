// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD7C4M3j69wgCk9aZp_Lw_HcRqkkbw0JI0',
    appId: '1:985969014798:web:ce205bc4df4a307539645f',
    messagingSenderId: '985969014798',
    projectId: 'flutter-demo-7baf8',
    authDomain: 'flutter-demo-7baf8.firebaseapp.com',
    storageBucket: 'flutter-demo-7baf8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkBDjNmRxsyrrhzCjLmo0n7YPTRl4UEOs',
    appId: '1:985969014798:android:cf4e5abcaadc592639645f',
    messagingSenderId: '985969014798',
    projectId: 'flutter-demo-7baf8',
    storageBucket: 'flutter-demo-7baf8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2Q4eTt4y4mLupaPL7DerWnfaWyRZuHgY',
    appId: '1:985969014798:ios:062bdb40a66ad14539645f',
    messagingSenderId: '985969014798',
    projectId: 'flutter-demo-7baf8',
    storageBucket: 'flutter-demo-7baf8.appspot.com',
    iosBundleId: 'com.example.firebaseDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD2Q4eTt4y4mLupaPL7DerWnfaWyRZuHgY',
    appId: '1:985969014798:ios:062bdb40a66ad14539645f',
    messagingSenderId: '985969014798',
    projectId: 'flutter-demo-7baf8',
    storageBucket: 'flutter-demo-7baf8.appspot.com',
    iosBundleId: 'com.example.firebaseDemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD7C4M3j69wgCk9aZp_Lw_HcRqkkbw0JI0',
    appId: '1:985969014798:web:d53f928718e022db39645f',
    messagingSenderId: '985969014798',
    projectId: 'flutter-demo-7baf8',
    authDomain: 'flutter-demo-7baf8.firebaseapp.com',
    storageBucket: 'flutter-demo-7baf8.appspot.com',
  );
}
