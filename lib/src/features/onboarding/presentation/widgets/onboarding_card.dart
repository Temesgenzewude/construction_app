import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnboardingCard extends HookWidget {
  const OnboardingCard(
      {super.key, required this.description, required this.imageUrl});

  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:   AppSizer.getHeight(context, 337.0) ,
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.fill,
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 24, left: 24.0, right: 24.0),
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
