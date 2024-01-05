import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/onboarding/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: AppSizer.getHeight(context, 100.0)),
                const Text(
                  companyName,
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: AppSizer.getHeight(context, 10.0)),
                const Text(
                  'bView ist eine Baumanagement-Plattform'
                  'die effizient koordiniert und die Zusammenarbeit'
                  'nzwischen den Projektbeteiligten fördert',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: -620,
                  top: 20,
                  child: Container(
                    width: AppSizer.getWidth(context, 1500.0),
                    height: AppSizer.getHeight(context, 1000.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/company.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: CustomButton(
                      routeName: AppRoutes.OnBoardingScreen.name,
                      buttonName: 'Loslegen',
                      topbottom: 15,
                      leftright: 15,
                      buttonColor: AppColors.primary,
                      textColor: AppColors.secondary,
                    ),
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
