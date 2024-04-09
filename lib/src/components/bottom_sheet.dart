import 'package:flutter/material.dart';

class BottomSheet {
  BottomSheet({
    required this.context,
    required this.child,
    this.isScrollControlled = false,
  });

  final BuildContext context;
  final Widget child;
  final bool isScrollControlled;

  Future<T?> show<T>() {
    return showModalBottomSheet<T>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      isScrollControlled: isScrollControlled,
      backgroundColor: Colors.white,
      context: context,
      builder: (context) => _child(),
    );
  }

  Widget _child() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
      child: child,
    );
  }
}
