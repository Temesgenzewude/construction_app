import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final double height;
  // final double width;
  final Color buttonColor;
  final Color textColor;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    this.onTap,
    required this.buttonName,
    required this.height,
    // required this.width,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: height,
          // horizontal: width,
         
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
