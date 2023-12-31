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
    apiKey: 'AIzaSyCN_bCqQegFVD2_g0nDix3ur1ZNQ-jck-k',
    appId: '1:930499945660:web:51661eaf77be427a1e9cb9',
    messagingSenderId: '930499945660',
    projectId: 'project-nexus-v0-2',
    authDomain: 'project-nexus-v0-2.firebaseapp.com',
    storageBucket: 'project-nexus-v0-2.appspot.com',
    measurementId: 'G-X7R94VYY8K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEZ8UYotXJ09hCImMIhmIyApfFTVOjF_s',
    appId: '1:930499945660:android:692c516fd62aaba31e9cb9',
    messagingSenderId: '930499945660',
    projectId: 'project-nexus-v0-2',
    storageBucket: 'project-nexus-v0-2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdROL8bBL3TOZ5GgIag99_KEeWq1sUUdA',
    appId: '1:930499945660:ios:1fee23bf669d6dfb1e9cb9',
    messagingSenderId: '930499945660',
    projectId: 'project-nexus-v0-2',
    storageBucket: 'project-nexus-v0-2.appspot.com',
    iosClientId: '930499945660-7o107822l9mfhosrcmtankstb2upqrv0.apps.googleusercontent.com',
    iosBundleId: 'com.YursenIndustries.nexus',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdROL8bBL3TOZ5GgIag99_KEeWq1sUUdA',
    appId: '1:930499945660:ios:a3ab8a6e4017bb601e9cb9',
    messagingSenderId: '930499945660',
    projectId: 'project-nexus-v0-2',
    storageBucket: 'project-nexus-v0-2.appspot.com',
    iosClientId: '930499945660-beq2f2akb2f0ijaol2hlcqo7ekv500mm.apps.googleusercontent.com',
    iosBundleId: 'com.YursenIndustries.nexus.RunnerTests',
  );
}
