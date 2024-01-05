import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PremiumPlanScreen extends HookWidget {
  const PremiumPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
             SizedBox(height: AppSizer.getHeight(context, 100.0)),
            const Text(
              'Gehen Sie Premium',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 26,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
             SizedBox(height: AppSizer.getHeight(context, 10.0)),

            const Text(
              'Keine Verpflichtung, jederzeit kündbar',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
             SizedBox(height: AppSizer.getHeight(context, 24.0)),

            Container(
              width:  AppSizer.getWidth(context, 311.0)  ,
              height: AppSizer.getHeight(context, 313.0),
              padding: const EdgeInsets.all(4),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: AppColors.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Premium-Plan',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 26,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: AppSizer.getHeight(context, 33.0),),
                  const Text(
                    '€19,99',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 60,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height:AppSizer.getHeight(context, 63.0),),
            CustomButton(
              onTap: () {},
              buttonName: 'Plan starten',
              topbottom: 15,
              leftright: 80,
              buttonColor: AppColors.secondary,
              textColor: AppColors.primary,
            ),
             SizedBox(height: AppSizer.getHeight(context, 20.0),),

            const Text(
              'Starten Sie die 3-Tage-Testversion',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
