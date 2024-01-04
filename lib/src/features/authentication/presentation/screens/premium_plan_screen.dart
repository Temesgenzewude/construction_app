import 'package:construction_app/src/features/authentication/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PremiumPlanScreen extends HookWidget {
  const PremiumPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF041675),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Text(
              'Gehen Sie Premium',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(height: 10),

            const Text(
              'Keine Verpflichtung, jederzeit kündbar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(height: 24),

            Container(
              width: 311,
              height: 313,
              padding: const EdgeInsets.all(4),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Premium-Plan',
                    style: TextStyle(
                      color: Color(0xFF041675),
                      fontSize: 26,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 33),
                  Text(
                    '€19,99',
                    style: TextStyle(
                      color: Color(0xFF041675),
                      fontSize: 60,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            CustomButton(
              onTap: () {},
              buttonName: 'Plan starten',
              topbottom: 15,
              leftright: 80,
              buttonColor: Colors.white,
              textColor: const Color(0xFF041675),
            ),
            const SizedBox(height: 20),

            const Text(
              'Starten Sie die 3-Tage-Testversion',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
