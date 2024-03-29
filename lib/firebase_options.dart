// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

// / Default [FirebaseOptions] for use with your Firebase apps.
// /
// / Example:
// / ```dart
// / import 'firebase_options.dart';
// / // ...
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
// / ```
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
    apiKey: 'AIzaSyCnDTS9z3hOgIqZWTG4YIC7aXP1ihLPbfA',
    appId: '1:13624263442:web:6da0316968fcef7d3ba9cb',
    messagingSenderId: '13624263442',
    projectId: 'prepper-b9e43',
    authDomain: 'prepper-b9e43.firebaseapp.com',
    storageBucket: 'prepper-b9e43.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBAtSxH1P6L4LprMLpHVRRReM2HAci8BGw',
    appId: '1:13624263442:android:1891087dd34c025b3ba9cb',
    messagingSenderId: '13624263442',
    projectId: 'prepper-b9e43',
    storageBucket: 'prepper-b9e43.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkBYV1hpIiNdy6pVP37wq2KUjEobGKKRY',
    appId: '1:13624263442:ios:cd4fd6c07e1641ec3ba9cb',
    messagingSenderId: '13624263442',
    projectId: 'prepper-b9e43',
    storageBucket: 'prepper-b9e43.appspot.com',
    iosBundleId: 'com.example.preperFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkBYV1hpIiNdy6pVP37wq2KUjEobGKKRY',
    appId: '1:13624263442:ios:1fe49525c430ac443ba9cb',
    messagingSenderId: '13624263442',
    projectId: 'prepper-b9e43',
    storageBucket: 'prepper-b9e43.appspot.com',
    iosBundleId: 'com.example.preperFlutter.RunnerTests',
  );
}
