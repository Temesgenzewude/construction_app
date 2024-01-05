// ignore_for_file: must_be_immutable

import 'package:construction_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class PlusIconbutton extends StatelessWidget {
  PlusIconbutton({super.key, this.onTap});
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(2),
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0, 0),
              blurRadius: 4,
              spreadRadius: 1,
            )
          ],
        ),
        child: Container(
          width: 15,
          height: 15,
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child: const Center(
            child: Icon(
              Icons.add_circle,
              color: AppColors.primary,
              size: 12,
            ),
          ),
        ),
      ),
    );
  }
}
