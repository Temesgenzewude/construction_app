import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.title,
    required this.width,
  });

  final String title;
  final Color textColor;
  final Color backgroundColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizer.getWidth(context, width),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.primary,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
