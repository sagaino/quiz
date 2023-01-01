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
    apiKey: 'AIzaSyCD6B5nKVd8buGCguEYfKdBH1M3ui17aGw',
    appId: '1:384918545180:web:58c8e2a95714ab788c90d9',
    messagingSenderId: '384918545180',
    projectId: 'quiz-7166f',
    authDomain: 'quiz-7166f.firebaseapp.com',
    storageBucket: 'quiz-7166f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBByt-i10ZVDmPxR5OCCnp_zXOcG6DflkQ',
    appId: '1:384918545180:android:a1f506f4c83e587c8c90d9',
    messagingSenderId: '384918545180',
    projectId: 'quiz-7166f',
    storageBucket: 'quiz-7166f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCDuq0Z_AEypHaAAdzYfb4I8AN3R7GmXw',
    appId: '1:384918545180:ios:c6bb116e47dfa3bc8c90d9',
    messagingSenderId: '384918545180',
    projectId: 'quiz-7166f',
    storageBucket: 'quiz-7166f.appspot.com',
    iosClientId: '384918545180-o902nbti3p5v8coej95nbbcb464rl1mu.apps.googleusercontent.com',
    iosBundleId: 'com.example.quiz',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDCDuq0Z_AEypHaAAdzYfb4I8AN3R7GmXw',
    appId: '1:384918545180:ios:c6bb116e47dfa3bc8c90d9',
    messagingSenderId: '384918545180',
    projectId: 'quiz-7166f',
    storageBucket: 'quiz-7166f.appspot.com',
    iosClientId: '384918545180-o902nbti3p5v8coej95nbbcb464rl1mu.apps.googleusercontent.com',
    iosBundleId: 'com.example.quiz',
  );
}
