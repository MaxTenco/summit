import 'package:flutter/material.dart';
import 'package:summit/splash_screen_boot/splash_screen_boot.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  Widget _splashScreen() {
    return const Scaffold(
      body: Center(
        child: Text(
          'Summit',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenBoot(
      splashScreen: _splashScreen(),
      initializeApp: _initializeApp,
      onDone: () {},
      onError: () {},
    );
  }
}
