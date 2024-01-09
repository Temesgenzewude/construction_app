import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard(
      {super.key, required this.description, required this.imageUrl});

  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppSizer.getHeight(context, 337.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 5.0, right: 5.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
