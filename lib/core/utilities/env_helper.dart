import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Helper method for safe access to environment variables via [DotEnv].

/// Standard-direct access: ’apiKey: dotenv.env['FIREBASE_API_KEY_IOS'] ?? ''; ’
/// But preferred a more elegant and syntax-sugar access with ENV['API_KEY']

class _EnvHelper {
  const _EnvHelper();
  String operator [](String key) {
    final value = dotenv.env[key];
    if (value == null || value.isEmpty) {
      logger.d(Messages.storage.envKeyMissing);
      throw StorageException(Messages.storage.envKeyMissing);
    }
    return value;
  }
}

// UX Addition: NOT lowerCamelCase on a global function for ENV naming convention.
// ignore_for_file: constant_identifier_names
const _EnvHelper ENV = _EnvHelper();
