//////////////////////////////////////////////////////////////////////////////////////////////////////////

/// TEMPLATE FILE FOR [Firebase] CONFIGURATION
///
/// You do NOT need to fill this file to run the project.
/// (No action is required: the project and Firebase services will run without extra steps)
///
/// I preferred to provide a straightforward and effortless ’clone-and-run’ setup for reviewers.
/// Therefore, I integrated native files (google-services.json / GoogleService-Info.plist) to repository.
/// and I initialized [Firebase] on ’main.dart’ with ’await Firebase.initializeApp()’ (without options).
///
/// 📌 If you prefer a programmatic init; or remove reliance on native config, or use your own project:
///    - Fill the placeholders below; and copy/rename this file to ’lib/firebase_options.dart’.
///    - Or generate ’firebase_options.dart’ via FlutterFire CLI :
///               dart pub global activate flutterfire_cli
///               flutterfire configure --project YOUR_PROJECT_ID
///
/// ⚠️ NOTES:
///     ** Recommended to use .env file (See ’.env.template’)
///     ** When you use [DefaultFirebaseOptions], native json/plist files will be ignored.
///     ** After creating [DefaultFirebaseOptions], update ’main.dart’ to:
///        ’await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);’

//////////////////////////////////////////////////////////////////////////////////////////////////////////

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/utilities/env_helper.dart';
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform;
import 'package:firebase_core/firebase_core.dart'
    show Firebase, FirebaseOptions;

class DefaultFirebaseOptions {
  static FirebaseOptions get android => FirebaseOptions(
    appId: ENV['FIREBASE_APP_ID_ANDROID'],
    apiKey: ENV['FIREBASE_API_KEY_ANDROID'],
    projectId: ENV['FIREBASE_PROJECT_ID'],
    storageBucket: ENV['FIREBASE_STORAGE_BUCKET'],
    messagingSenderId: ENV['FIREBASE_MESSAGING_SENDER_ID'],
  );

  static FirebaseOptions get ios => FirebaseOptions(
    apiKey: ENV['FIREBASE_API_KEY_IOS'],
    appId: ENV['FIREBASE_APP_ID_IOS'],
    iosBundleId: ENV['IOS_BUNDLE_ID'],
    projectId: ENV['FIREBASE_PROJECT_ID'],
    storageBucket: ENV['FIREBASE_STORAGE_BUCKET'],
    messagingSenderId: ENV['FIREBASE_MESSAGING_SENDER_ID'],
  );

  static FirebaseOptions get currentPlatform {
    return switch (defaultTargetPlatform) {
      TargetPlatform.android => android,
      TargetPlatform.iOS => ios,
      _ => throw UnsupportedError(Messages.core.platform),
    };
  }
}
