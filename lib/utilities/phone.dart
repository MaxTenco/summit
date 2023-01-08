import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

abstract class SummitPhone {
  static Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  static Future<void> makeWhatsAppChat(String phoneNumber, String message) async {
    late final String url;

    if (Platform.isAndroid) {
      url = 'https://wa.me/$phoneNumber/?text=${Uri.parse(message)}';
    } else {
      url = 'https://api.whatsapp.com/send?phone=$phoneNumber=${Uri.parse(message)}';
    }

    final Uri uri = Uri.parse(url);

    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $uri';
    }
  }
}
