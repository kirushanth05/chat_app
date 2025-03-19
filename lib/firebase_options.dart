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
    apiKey: 'AIzaSyDePfsSpLPNvRHFOzIYTqI04AQqi_llEAA',
    appId: '1:654560234199:web:aed53107c1818f2d643e92',
    messagingSenderId: '654560234199',
    projectId: 'chat-application-ba086',
    authDomain: 'chat-application-ba086.firebaseapp.com',
    storageBucket: 'chat-application-ba086.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAHFJIkpoRbX_itnKOWqssJkPCiDCcmm4',
    appId: '1:654560234199:android:cc687c05cfa2029f643e92',
    messagingSenderId: '654560234199',
    projectId: 'chat-application-ba086',
    storageBucket: 'chat-application-ba086.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsTAjFZ1E96fgyU02eimdr_hfta_Wnixo',
    appId: '1:654560234199:ios:068cb9f1530edf46643e92',
    messagingSenderId: '654560234199',
    projectId: 'chat-application-ba086',
    storageBucket: 'chat-application-ba086.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCsTAjFZ1E96fgyU02eimdr_hfta_Wnixo',
    appId: '1:654560234199:ios:068cb9f1530edf46643e92',
    messagingSenderId: '654560234199',
    projectId: 'chat-application-ba086',
    storageBucket: 'chat-application-ba086.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDePfsSpLPNvRHFOzIYTqI04AQqi_llEAA',
    appId: '1:654560234199:web:4b255c46adc81784643e92',
    messagingSenderId: '654560234199',
    projectId: 'chat-application-ba086',
    authDomain: 'chat-application-ba086.firebaseapp.com',
    storageBucket: 'chat-application-ba086.firebasestorage.app',
  );
}
