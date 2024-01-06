
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class DialogContainer extends StatelessWidget {
  const DialogContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: AppColors.secondary,
      content: SizedBox(
        width: AppSizer.getWidth(context, 270),
        height: AppSizer.getHeight(context, 315),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Abonnementverwaltung',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF041675),
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(height: AppSizer.getHeight(context, 20)),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '3-Tage-Testversion – dann \n19,99 €/Monat',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: AppSizer.getHeight(context, 30)),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: AppSizer.getWidth(context, 170),
                height: AppSizer.getHeight(context, 60),
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Plan starten',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: AppSizer.getHeight(context, 12)),
            const Text(
              ' 3-tägige Testversion starten',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
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

