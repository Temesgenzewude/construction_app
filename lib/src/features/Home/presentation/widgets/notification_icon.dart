import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 2,
            offset: Offset(1, 1),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 2,
            offset: Offset(-1, -1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        children: [
          const Icon(
            Icons.notifications_none,
          ),
          Positioned(
            top: 0,
            right: 2,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
