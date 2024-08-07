import 'package:flutter/material.dart';
import 'package:summit/utilities/gap.dart';

class GapScreen extends StatelessWidget {
  const GapScreen({super.key});

  Widget _separator(String value) {
    return Container(
      width: double.infinity,
      height: 26,
      color: Colors.amber,
      child: Center(
        child: Text(value),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _separator('tiny'),
            // GapH.tiny,
            _separator('small'),
            GapH.small,
            _separator('mediumSmall'),
            // GapH.mediumSmall,
            _separator('medium'),
            GapH.medium,
            _separator('mediumLarge'),
            // GapH.mediumLarge,
            _separator('large'),
            GapH.large,
            _separator('extraLarge'),
            GapH.extraLarge,
            _separator(''),
          ],
        ),
      ),
    );
  }
}
