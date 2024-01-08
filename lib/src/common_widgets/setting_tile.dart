import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class SettingTitle extends StatelessWidget {
  const SettingTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13,
        vertical: AppSizer.getHeight(context, 13),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 225, 230, 255),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: 'Montserrat',
        ),
      ),
    );
  }
}
