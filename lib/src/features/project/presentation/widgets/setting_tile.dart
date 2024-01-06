import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  SettingTile({
    super.key,
    required this.text,
    this.icon,
    this.suffixText,
  });
  final String text;
  final bool? icon;
  final String? suffixText;
  final Function()? onPressed = () {};

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
        Row(
          children: [
            suffixText != null
                ? Text(
                    suffixText!,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  )
                : SizedBox(),
            icon != null
                ? IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.navigate_next,
                    ),
                  )
                : SizedBox(),
          ],
        )
      ],
    );
  }
}
