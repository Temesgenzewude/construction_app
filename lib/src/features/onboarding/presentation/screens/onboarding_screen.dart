import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/onboarding/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/features/onboarding/presentation/widgets/onboarding_card.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends HookWidget {
  OnboardingScreen({super.key});

  final List<Widget> _pages = [
    const OnboardingCard(
      description:
          'Die digitale Verbindung zwischen Baustelle und Büro ermöglicht Echtzeitkommunikation, Ressourcenmanagement und die effektive Überwachung von Bauprojectenmanagement.',
      imageUrl: 'assets/images/first.png',
    ),
    const OnboardingCard(
      description:
          'Die Vorteile, alles auf einem mobilen Gerät zu haben, umfassen flexible Mobilität, nahtlose Integration und effiziente Datenverwaltung unterwegs.',
      imageUrl: 'assets/images/second.png',
    ),
    const OnboardingCard(
      description:
          'Effizienz auf der Baustelle ist entscheident, um Zeit-und Ressourcenverschwendung zu  minimieren und die Produktivität zu steigern.',
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
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: pageController,
                          count: _pages.length,
                          effect: const WormEffect(
                            dotWidth: 10,
                            dotHeight: 10,
                            activeDotColor: AppColors.secondary,
                            dotColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: AppSizer.getHeight(context, 24.0)),
                CustomButton(
                  routeName: AppRoutes.AuthScreen.name,
                  buttonName: 'Weitermachen',
                  topbottom: 15,
                  leftright: 80,
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
