import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({
    super.key,
    required this.imageName,
    required this.title,
    required this.description,
  });
  final String imageName;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
      ),
      color: AppColors.secondary,
      surfaceTintColor: AppColors.secondary,
      child: Column(
        children: [
          SizedBox(
            width: AppSizer.getWidth(context, 150),
            height: AppSizer.getHeight(context, 150),
            child: Ink.image(
              image: AssetImage("assets/images/$imageName"),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: AppSizer.getHeight(context, 30)),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20.0,
              left: 12,
              right: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: AppSizer.getHeight(context, 3)),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
