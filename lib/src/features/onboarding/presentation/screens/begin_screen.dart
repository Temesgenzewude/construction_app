import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/onboarding/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: -620,
                  top: 20,
                  child: Container(
                    width: AppSizer.getWidth(context, 1500.0),
                    height: AppSizer.getHeight(context, 1060.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/company.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        CustomButton(
                          routeName: AppRoutes.SignupFirstScreen.name,
                          buttonName: 'Registrieren',
                          topbottom: 15,
                          leftright: 80,
                          buttonColor: AppColors.primary,
                          textColor: AppColors.secondary,
                        ),
                        SizedBox(height: AppSizer.getHeight(context, 24.0)),
                        CustomButton(
                          routeName: AppRoutes.LoginScreen.name,
                          buttonName: 'Anmeldung',
                          topbottom: 15,
                          leftright: 80,
                          buttonColor: AppColors.secondary,
                          textColor: AppColors.primary,
                        ),
                      ],
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
