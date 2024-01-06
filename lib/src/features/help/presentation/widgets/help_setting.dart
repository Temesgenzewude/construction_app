

import 'package:flutter/material.dart';

class HelpSettingTile extends StatelessWidget {
  const HelpSettingTile({
    super.key,
    required this.icon,
    required this.text,
  });

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.navigate_next,
          ),
        )
      ],
    );
  }
}
