import 'package:construction_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class SelectedDot extends StatelessWidget {
  const SelectedDot({super.key, this.size});
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 20,
          height: 9,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
