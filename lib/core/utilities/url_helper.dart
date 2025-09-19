import 'package:url_launcher/url_launcher.dart';

/// Utility helper class to handle external links
/// Usage: ’UrlHelper.openUrl(base, path)’

class UrlHelper {
  UrlHelper._();

  /// Opens a URL in external browser
  static Future<void> launch(String base, String path) async {
    try {
      final success = await launchUrl(
        Uri.https(base, path),
        mode: LaunchMode.externalApplication,
      );
      if (!success) return;
    } catch (_) {}
  }
}
