
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.iconName,
    required this.label,
    required this.value,
    this.onTap,
  });

  final String iconName;
  final String label;
  final String value;
  final Function()? onTap;

  get images => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/$iconName",
                  width: AppSizer.getWidth(context, 18),
                  height: AppSizer.getWidth(context, 18),
                ),
                SizedBox(width: AppSizer.getWidth(context, 5)),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Text(
              value,
              style: TextStyle(
                color: Colors.black.withOpacity(0.7200000286102295),
                fontSize: 10,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}