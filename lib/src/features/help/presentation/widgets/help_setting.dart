// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  SettingTile({
    super.key,
    required this.icon,
    required this.text,
  });

  String text;
  Icon icon;

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
