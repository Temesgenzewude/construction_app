import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HelpSettingTile extends StatelessWidget {
  const HelpSettingTile({
    super.key,
    required this.iconPath,
    required this.text,
  });

  final String text;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: AppSizer.getWidth(context, 20),
              height: AppSizer.getWidth(context, 20),
            ),
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
