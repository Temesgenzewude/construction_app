import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends HookWidget {
  final String routeName;
  final String buttonName;
  final double topbottom;
  final double leftright;
  final Color buttonColor;
  final Color textColor;

  const CustomButton({
    Key? key,
    required this.routeName,
    required this.buttonName,
    required this.topbottom,
    required this.leftright,
    required this.buttonColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(routeName); // Navigate to the provided route
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.only(
          right: leftright,
          left: leftright,
          top: topbottom,
          bottom: topbottom,
        ),
        decoration: ShapeDecoration(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style:  TextStyle(
                color: textColor,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
