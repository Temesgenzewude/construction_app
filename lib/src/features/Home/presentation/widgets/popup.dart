import 'package:construction_app/src/common_widgets/button.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

Future<dynamic> showPopup(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 8,
        insetPadding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 25),
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: AppSizer.getWidth(context, 18),
            vertical: AppSizer.getHeight(context, 70)),
        content: Container(
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'bView Mochte dir Mitteilugen \nsenden',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: AppSizer.getWidth(context, 18),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: AppSizer.getHeight(context, 14),
                  bottom: AppSizer.getHeight(context, 37),
                  left: AppSizer.getWidth(context, 13),
                  right: AppSizer.getWidth(context, 13),
                ),
                child: Text(
                  'Mitteilungen können Hinweise und Töne sein. \n Diese können in den Einstellungen konfiguriert werden.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppSizer.getWidth(context, 14),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Button(
                  backgroundColor: AppColors.primary,
                  textColor: Colors.white,
                  title: 'Erlauben',
                  width: 239,
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 14),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Nicht erlauben',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: AppSizer.getWidth(context, 20),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
