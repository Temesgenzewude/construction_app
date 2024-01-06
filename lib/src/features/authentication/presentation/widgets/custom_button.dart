import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final double topbottom;
  final double leftright;
  final Color buttonColor;
  final Color textColor;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    this.onTap,
    required this.buttonName,
    required this.topbottom,
    required this.leftright,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
              style: TextStyle(
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
