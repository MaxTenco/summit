import 'package:flutter/material.dart';

class SBottomSheet {
  SBottomSheet({
    required this.context,
    required this.child,
    this.isScrollControlled = false,
    this.title,
  });

  final BuildContext context;
  final Widget child;
  final bool isScrollControlled;
  final String? title;

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
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildDash(),
          _title(title),
          child,
        ],
      ),
    );
  }

  Widget _title(String? title) {
    return title == null
        ? const SizedBox.shrink()
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8, left: 12, right: 12),
                child: Center(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                height: 1,
              ),
            ],
          );
  }

  Widget _buildDash() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Center(
        child: Container(
          width: 36,
          height: 3.5,
          decoration: const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
    );
  }
}
