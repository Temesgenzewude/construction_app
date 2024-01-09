import 'package:construction_app/src/common_widgets/dots_widget.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/onboarding/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/features/onboarding/presentation/widgets/onboarding_card.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnboardingScreen extends HookWidget {
  OnboardingScreen({super.key});

  final List<Widget> _pages = [
    const OnboardingCard(
      description:
        'Die digitale Verbindung zwischen Baustelle und \nBüro ermöglicht Echtzeitkommunikation, \nRessourcenmanagement und die effektive Überwachung \nvon Bauprojectenmanagement.',
      imageUrl: 'assets/images/first.png',
    ),
    const OnboardingCard(
      description:
          'Die Vorteile, alles auf einem mobilen Gerät zu \nhaben, umfassen flexible Mobilität, nahtlose \nIntegration undeffiziente Datenverwaltung \nunterwegs.',
      imageUrl: 'assets/images/second.png',
    ),
    const OnboardingCard(
      description:
          'Effizienz auf der Baustelle ist entscheident, um \nZeit-und Ressourcenverschwendung zu  \nminimieren und die \nProduktivität zu steigern.',
      imageUrl: 'assets/images/third.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final currentPage = useState(0);
    final pageController = usePageController();

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: AppSizer.getHeight(context, 500.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: PageView.builder(
                controller: pageController,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  currentPage.value = index;
                },
                itemBuilder: (context, index) {
                  return _pages[index];
                },
              ),
            ),
          ),
          SizedBox(height: AppSizer.getHeight(context, 5)),
          Center(
            child: DotsWidget(
              selectedIndex: currentPage.value,
              selectedColor: AppColors.secondary,
              size: 20,
              totalDots: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                SizedBox(height: AppSizer.getHeight(context, 24.0)),
                CustomButton(
                  routeName: AppRoutes.AuthScreen.name,
                  buttonName: 'Weitermachen',
                  height: 15,
                  width: 75,
                  buttonColor: AppColors.secondary,
                  textColor: AppColors.primary,
                ),
                SizedBox(height: AppSizer.getHeight(context, 24.0)),
                const Text(
                  'überspringen',
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
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
