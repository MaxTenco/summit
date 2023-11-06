import 'package:exaple/screens/gap_screen.dart';
import 'package:flutter/material.dart';
import 'package:summit/summit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget _openMaps() {
    return TextButton(
      onPressed: () => SummitPhone.openMap(41.8902142, 12.4900422, 'Colosseo'),
      child: const Text('Open Map'),
    );
  }

  Widget _gap() {
    return Builder(
      builder: (context) {
        return ElevatedButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const GapScreen(),
            ),
          ),
          child: const Text('Gap'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _gap(),
            _openMaps(),
            const CircleButton.back(),
            const SizedBox(
              height: 300,
              width: double.infinity,
              child: ModalBarrier(
                color: Colors.amber,
                dismissible: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
