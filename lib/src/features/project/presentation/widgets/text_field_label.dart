import 'package:flutter/material.dart';

class FieldLable extends StatelessWidget {
  const FieldLable({super.key, required this.labelText});
  final String labelText;
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
