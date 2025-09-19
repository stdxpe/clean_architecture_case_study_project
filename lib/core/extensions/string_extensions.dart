part of '../utilities/utilities_library_imports.dart';

/// Fix for the broken links from the API
/// Usage example:  `brokenLink.withHttps`
extension EnforceHttps on String {
  String get withHttps => replaceFirst(RegExp(r'^https?:\/\/'), 'https://');
}

/// Usage example:  `reallyLongText.firstWords(2)`
extension FirstWordsExtension on String {
  String firstWords(int count) {
    final words = trim().split(RegExp(r'\s+'));
    return words.take(count).join(' ');
  }
}

/// Checks if the string is neither null or empty
/// Usage example:  ’state.profile.photoUrl.isNotNullOrEmpty’
/// Instead of ’state.profile.photoUrl != null && state.profile.photoUrl!.isNotEmpty’
extension StringNullOrEmptyX on String? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}

/// Returns the clean class name without "Instance of ..."
/// Use only when ’this.toString()’ is not enough/available.
extension CleanClassName on Object {
  String get getClassName {
    final s = toString();
    final match = RegExp("Instance of '(.+)'").firstMatch(s);
    return match?.group(1) ?? s;
  }
}

extension FindByIdExtension on List<dynamic> {
  T? byId<T extends dynamic>(String id) {
    for (final m in this) {
      if ((m as T).id == id) return m;
    }
    return null;
  }
}

extension ReplaceByIdExtension<T> on List<T> {
  List<T> replaceWhere(bool Function(T) test, T newValue) {
    return map((item) => test(item) ? newValue : item).toList();
  }
}

extension IdShortener on String {
  String get shortenId {
    if (length <= 6) return this;
    return substring(0, 6);
  }
}

/// Returns First ScreenWriter if Director is ’N/A’
extension DirectorOrWriterExtension on String? {
  String orScreenWriter(String? screenWriter) {
    final directorTrimmed = this?.trim();
    if (directorTrimmed == null) return _firstScreenWriter(screenWriter);
    final directorCleaned = directorTrimmed.replaceAll(' ', '').toUpperCase();
    if (directorCleaned == 'N/A') return _firstScreenWriter(screenWriter);
    return directorTrimmed;
  }

  String _firstScreenWriter(String? text) {
    if (text == null || text.trim().isEmpty) return '';
    return text.split(',').first.trim();
  }
}

/// Creates a List<String> from a nullable String
/// "Gerard Butler, Lena Headey" → ["Gerard Butler", "Lena Headey"]
extension CommaSeparatedList on String? {
  List<String> seperateList() {
    final value = this;
    if (value == null || value.trim().isEmpty) return [];
    return value
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
  }
}

/// Converts a string from "140 min" to "2h 20min"
extension DurationFormat on String {
  String formatDuration() {
    final regex = RegExp(r'(\d+)');
    final match = regex.firstMatch(this);
    if (match == null) return this;

    final totalMinutes = int.parse(match.group(1)!);
    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;

    if (hours > 0 && minutes > 0) {
      return '${hours}h ${minutes}m';
    } else if (hours > 0) {
      return '${hours}h';
    } else {
      return '${minutes}m';
    }
  }
}
