// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DrawerSetting extends StatelessWidget {
  DrawerSetting(
      {super.key, required this.icon, required this.text, required this.onTap});

  String text;
  Icon icon;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }
}
