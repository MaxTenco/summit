import 'dart:io';

import 'package:map_launcher/map_launcher.dart';
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

  Future<void> _openWebSite(String url) async {
    final parts = url.split('://');
    final scheme = parts[0];

    final splitted = parts[1].split('/');
    final host = splitted[0];

    splitted.removeAt(0);
    final path = splitted.join('/');

    final toLaunch = Uri(scheme: scheme, host: host, path: path);

    if (!await launchUrl(
      toLaunch,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  // /// 'https://www.google.com/maps/dir/?api=1&$origin&$destination';
  // static Future<void> openMap(double latitude, double longitude) async {
  //   final maps = Uri(
  //     scheme: 'https',
  //     path: 'www.google.com/maps/',
  //     query: '@$latitude,$longitude',
  //   );
  //
  //   if (!await launchUrl(
  //     maps,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw 'Could not launch $maps';
  //   }
  // }

  static Future<void> openMap(double latitude, double longitude, String title) async {
    final availableMaps = await MapLauncher.installedMaps;

    await availableMaps.first.showMarker(
      coords: Coords(latitude, longitude),
      title: title,
    );
  }

  static Future<void> sendEmail(String email, String subject) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'smith@example.com',
      query: _encodeQueryParameters(<String, String>{
        'subject': subject,
      }),
    );

    if (!await launchUrl(
      emailLaunchUri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  static String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
  }
}
