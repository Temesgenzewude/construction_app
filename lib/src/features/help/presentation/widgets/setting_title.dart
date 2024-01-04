import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class SettingTitle extends StatelessWidget {
  SettingTitle({
    super.key,
    required this.title,
  });

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.5,
        vertical: AppSizer.getHeight(context, 12.5),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 225, 230, 255),
      ),
      child: Text(title),
    );
  }
}