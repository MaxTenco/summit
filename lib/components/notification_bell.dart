import 'package:flutter/material.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
        Visibility(
          visible: true,
          child: Positioned(
            right: 8,
            top: 8,
            child: Container(
              height: 13,
              width: 13,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
