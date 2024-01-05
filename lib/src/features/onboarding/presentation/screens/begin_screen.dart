import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/onboarding/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BeginScreen extends HookWidget {
  const BeginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF041675),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  companyName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
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
                    width: 1500,
                    height: 850,
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
                          buttonColor: const Color(0xFF041675),
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: 24),
                        CustomButton(
                          routeName: AppRoutes.LoginScreen.name,
                          buttonName: 'Anmeldung',
                          topbottom: 15,
                          leftright: 80,
                          buttonColor: Colors.white,
                          textColor: const Color(0xFF041675),
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
