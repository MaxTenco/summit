import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.icon,
    this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(color: Colors.grey.withAlpha(50), shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor,
        ),
        onPressed: () {},
      ),
    );
  }

  const factory CircleButton.back({
    Color iconColor,
  }) = _BackButton;
}

class _BackButton extends CircleButton {
  const _BackButton({
    super.iconColor,
  }) : super(
          icon: Icons.arrow_back_ios_new_rounded,
        );
}
