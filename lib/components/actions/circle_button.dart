import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(color: Colors.grey.withAlpha(70), shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor,
        ),
        onPressed: onPressed,
      ),
    );
  }

  const factory CircleButton.back({
    Color iconColor,
    VoidCallback? onPressed,
  }) = _BackButton;
}

class _BackButton extends CircleButton {
  const _BackButton({
    super.iconColor,
    super.onPressed,
  }) : super(
          icon: Icons.arrow_back_ios_new_rounded,
        );
}
