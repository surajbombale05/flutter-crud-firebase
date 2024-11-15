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
    apiKey: 'AIzaSyAaAh4ecYhmrPPZQv_U4E3O7tg69-PwSFY',
    appId: '1:1089110668507:web:e3b6aaf1b44fbd258b08fe',
    messagingSenderId: '1089110668507',
    projectId: 'testing-76dc1',
    authDomain: 'testing-76dc1.firebaseapp.com',
    storageBucket: 'testing-76dc1.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDi5xnZyfwSG_hR8qb9TMyYs4_lYshRjfw',
    appId: '1:1089110668507:android:35ad34757b95ed878b08fe',
    messagingSenderId: '1089110668507',
    projectId: 'testing-76dc1',
    storageBucket: 'testing-76dc1.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkoqnzLW6rizZYXBO8ZuzKf2o4vEXYVgg',
    appId: '1:1089110668507:ios:6023fefcf6f3831e8b08fe',
    messagingSenderId: '1089110668507',
    projectId: 'testing-76dc1',
    storageBucket: 'testing-76dc1.firebasestorage.app',
    iosBundleId: 'com.example.flutterFf',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkoqnzLW6rizZYXBO8ZuzKf2o4vEXYVgg',
    appId: '1:1089110668507:ios:6023fefcf6f3831e8b08fe',
    messagingSenderId: '1089110668507',
    projectId: 'testing-76dc1',
    storageBucket: 'testing-76dc1.firebasestorage.app',
    iosBundleId: 'com.example.flutterFf',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAaAh4ecYhmrPPZQv_U4E3O7tg69-PwSFY',
    appId: '1:1089110668507:web:9b90e37fe28fda3d8b08fe',
    messagingSenderId: '1089110668507',
    projectId: 'testing-76dc1',
    authDomain: 'testing-76dc1.firebaseapp.com',
    storageBucket: 'testing-76dc1.firebasestorage.app',
  );
}
