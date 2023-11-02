import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class Functions {
  static Future<void> launchSocialUrl({required String? url}) async {
    //
    final bool isMail = url!.contains('@');
    try {
      var u = Uri(
        path: url,
        scheme: isMail ? 'mailto' : 'https',
      );
      debugPrint('launching url.....$u');

      if (!await launchUrl(u)) {
        debugPrint('unable to launch url.....');
      }
    } catch (e) {
      //
      debugPrint('error while launching.......$e');
    }
  }
}
