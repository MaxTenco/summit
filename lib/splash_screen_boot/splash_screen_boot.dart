import 'package:flutter/material.dart';

class SplashScreenBoot extends StatefulWidget {
  const SplashScreenBoot({
    Key? key,
    required this.splashScreen,
    required this.initializeApp,
    required this.onDone,
    required this.onError,
  }) : super(key: key);

  final Widget splashScreen;
  final Future<void> Function() initializeApp;
  final VoidCallback onDone;
  final VoidCallback onError;

  @override
  State<SplashScreenBoot> createState() => _SplashScreenBootState();
}

class _SplashScreenBootState extends State<SplashScreenBoot> {
  // **************************************************************************
  // LIFE CYCLE
  // **************************************************************************
  @override
  void initState() {
    super.initState();
    _init();
  }

  // **************************************************************************
  // BUSINESS LOGIC
  // **************************************************************************
  Future<void> _init() async {
    try {
      await widget.initializeApp();
      widget.onDone();
    } catch (e, s) {
      print(e);
      print(s);
      widget.onError();
    }
  }

  // **************************************************************************
  // BUILD
  // **************************************************************************
  @override
  Widget build(BuildContext context) {
    return widget.splashScreen;
  }
}
