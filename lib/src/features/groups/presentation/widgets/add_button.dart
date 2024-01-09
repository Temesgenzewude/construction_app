import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: FloatingActionButton(
        elevation: 0,
        backgroundColor: AppColors.primary,
        shape: const CircleBorder(),
        child: SvgPicture.asset(
          "assets/icons/plus.svg",
          width: 52,
          height: 52,
        ),
        onPressed: () {
          context.pushNamed(AppRoutes.AddGroupScreen.name);
        },
      ),
    );
  }
}
