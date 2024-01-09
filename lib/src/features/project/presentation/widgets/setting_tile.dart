import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  SettingTile({
    super.key,
    required this.text,
    this.icon,
    this.suffixText,
    this.onPressed,
  });
  final String text;
  final bool? icon;
  final String? suffixText;
  final Function()? onPressed;

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
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        Row(
          children: [
            suffixText != null
                ? Text(
                    suffixText!,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7200000286102295),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : const SizedBox(),
            icon != null
                ? IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.navigate_next,
                    ),
                  )
                : const SizedBox(),
          ],
        )
      ],
    );
  }
}
