import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class InputFieldWithLable extends StatelessWidget {
  final String label;
  final double width;
  final double height;
  final TextEditingController controller;

  const InputFieldWithLable({
    super.key,
    required this.label,
    required this.controller,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: AppSizer.getWidth(context, 5)),
        InputFieldContainer(
          width: width,
          height: height,
          controller: controller,
        ),
      ],
    );
  }
}

class InputFieldContainer extends StatelessWidget {
  const InputFieldContainer({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
  });

  final double width;
  final double height;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // height: height,
      // padding: const EdgeInsets.vertical(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 2,
            offset: Offset(1, 1),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 2,
            offset: Offset(-1, -1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          isDense: true,
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 10, right: 5, top: 2, bottom: 2),
        ),
      ),
    );
  }
}
