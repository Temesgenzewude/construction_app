import 'package:construction_app/src/features/onboarding/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/features/onboarding/presentation/widgets/onboarding_card.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
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
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF041675),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 425,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
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
                          controller: _pageController,
                          count: _pages.length,
                          effect: const WormEffect(
                            dotWidth: 10,
                            dotHeight: 10,
                            activeDotColor: Colors.white,
                            dotColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomButton(
                  routeName: AppRoutes.AuthScreen.name,
                  buttonName: 'Weitermachen',
                  topbottom: 15,
                  leftright: 80,
                  buttonColor: Colors.white,
                  textColor: const Color(0xFF041675),
                ),
                const SizedBox(height: 24),
                const Text(
                  'überspringen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
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
