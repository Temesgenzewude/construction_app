import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class FixedTextFieldWidget extends StatelessWidget {
  const FixedTextFieldWidget({
    super.key,
    required this.controller,
    this.maxLines = 1,
  });

  final TextEditingController controller;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        // vertical: 8,
      ),
      width: AppSizer.getWidth(
        context,
        166,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
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
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.7200000286102295),
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
          border: InputBorder.none,
          isDense: true,
        ),
        style: TextStyle(
          fontSize: 12,
          color: Colors.black.withOpacity(0.7200000286102295),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 25 / 15,
        ),
        maxLines: maxLines,
        cursorColor: const Color.fromARGB(117, 0, 0, 0),
        controller: controller,
      ),
    );
  }
}
