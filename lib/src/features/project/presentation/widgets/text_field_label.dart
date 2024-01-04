
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FieldLable extends StatelessWidget {
  FieldLable({super.key, required this.labelText});
  String labelText;
  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
