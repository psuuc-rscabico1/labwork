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
    apiKey: 'AIzaSyAnXcNBKwVAUl-Ee9-7yCZCM4VKPPS87QM',
    appId: '1:697260247143:web:52e57a91dc8b0b0b446cc2',
    messagingSenderId: '697260247143',
    projectId: 'cabicoraymart-labwork',
    authDomain: 'cabicoraymart-labwork.firebaseapp.com',
    storageBucket: 'cabicoraymart-labwork.appspot.com',
    measurementId: 'G-VC1W129WJF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChRrK4N6XHlom3bmpzAv0Bfx8s3kDnVqc',
    appId: '1:697260247143:android:080a11019b9f9ed8446cc2',
    messagingSenderId: '697260247143',
    projectId: 'cabicoraymart-labwork',
    storageBucket: 'cabicoraymart-labwork.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUC0Bm4ZZWbqA1j_EKCHI_427FCVFOD-s',
    appId: '1:697260247143:ios:433ea8102fb4a7fe446cc2',
    messagingSenderId: '697260247143',
    projectId: 'cabicoraymart-labwork',
    storageBucket: 'cabicoraymart-labwork.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUC0Bm4ZZWbqA1j_EKCHI_427FCVFOD-s',
    appId: '1:697260247143:ios:a07cc66177ff8673446cc2',
    messagingSenderId: '697260247143',
    projectId: 'cabicoraymart-labwork',
    storageBucket: 'cabicoraymart-labwork.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
