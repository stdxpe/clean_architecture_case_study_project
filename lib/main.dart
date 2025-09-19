import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'package:case_study_clean_architecture_project/root_app.dart';
import 'package:case_study_clean_architecture_project/core/utilities/system_ui_config.dart';
import 'package:case_study_clean_architecture_project/core/dependency_injection/injector.dart';
import 'package:case_study_clean_architecture_project/core/services/logger/logger_service.dart';
import 'package:case_study_clean_architecture_project/core/extensions/transform_extensions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

void main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /// SystemChrome Configurations
      await configureSystemUISettings();

      /// DotEnv Implemented as Environment Variable Solution
      await dotenv.load(fileName: AppConstants.paths.env);

      /// Hive Implemented as Local Storage Solution
      await Hive.initFlutter();

      /// Firebase Implemented as Cloud Solution
      await Firebase.initializeApp();

      /// GetIt Implemented as Dependency Injection Solution
      await initializeDependencyInjectionService();

      /// Catches all uncaught Flutter-framework errors
      FlutterError.onError = (e) {
        final logger = getIt<LoggerService>(); // Temp instance
        // 📌 ’logger.f’ sends crash reports to Crashlytics
        logger.f(Messages.core.error, Messages.level, e: e.exception);
        FlutterError.dumpErrorToConsole(e);
      };

      /// Catches uncaught platform-level errors
      PlatformDispatcher.instance.onError = (e, st) {
        final logger = getIt<LoggerService>(); // Temp instance
        // 📌 ’logger.f’ sends crash reports to Crashlytics
        logger.f(Messages.core.pd, Messages.level, e: e, st: st);
        FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
        return true;
      };

      /// EasyLocalization Implemented as Localization Service
      await EasyLocalization.ensureInitialized();
      EasyLocalization.logger.enableBuildModes = [];

      runApp(
        EasyLocalization(
          path: AppConstants.paths.locale,
          supportedLocales: [AppLocale.en.toLocale, AppLocale.tr.toLocale],
          child: const RootApp(),
        ),
      );
    },

    /// Catches uncaught async/zone errors
    (Object e, StackTrace st) async {
      try {
        log(Messages.core.asyncZoneError, error: e, stackTrace: st);
      } catch (e) {
        log(Messages.core.uncaughtAsyncZoneError, error: e, stackTrace: st);
      }
    },
  );
}
