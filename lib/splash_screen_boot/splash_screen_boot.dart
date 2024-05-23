import 'package:flutter/material.dart';

class SplashScreenBoot extends StatefulWidget {
  const SplashScreenBoot({
    super.key,
    required this.splashScreen,
    required this.initializeApp,
    required this.onDone,
    required this.onError,
  });

  final Widget splashScreen;
  final Future<void> Function() initializeApp;
  final VoidCallback onDone;
  final Function(Object exception, StackTrace stackTrace) onError;

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
      widget.onError(e, s);
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
