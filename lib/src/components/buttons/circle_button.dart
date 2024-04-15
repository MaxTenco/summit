import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.size = 40,
    this.iconSize,
  });

  final VoidCallback? onPressed;
  final IconData icon;
  final Color? iconColor;
  final double size;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha(70),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor,
        ),
        onPressed: onPressed,
        iconSize: iconSize,
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
