

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.textEditingController,
    this.radius = 8,
    required this.isDatePicker,
    required this.hintText,
  });

  final TextEditingController textEditingController;
  double radius;
  bool? isPassword;
  bool isDatePicker;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        // vertical: 8,
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
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.7200000286102295),
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
          border: InputBorder.none,
          suffixIcon: isDatePicker
              ? const Icon(
                  Icons.date_range,
                  size: 20,
                )
              : null,
          isDense: true,
        ),
        readOnly: isDatePicker,
        onTap: isDatePicker
            ? () => selectedDate(
                  context,
                  DateTime(2020),
                  DateTime(2030),
                )
            : null,
        style: const TextStyle(
          fontSize: 14,
          height: 25 / 15,
        ),
        cursorColor: const Color.fromARGB(117, 0, 0, 0),
        controller: textEditingController,
      ),
    );
  }

  Future<void> selectedDate(
      BuildContext context, DateTime firstDate, DateTime lastDate) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (pickedDate != null) {
      textEditingController.text = pickedDate.toString().split(' ')[0];
    }
  }
}
