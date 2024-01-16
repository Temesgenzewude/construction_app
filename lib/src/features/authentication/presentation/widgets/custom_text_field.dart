import 'package:construction_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class TextFieldWithlabel extends StatelessWidget {
  const TextFieldWithlabel(
      {super.key,
      required this.controller,
      required this.label,
      required this.obscurePassword,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText,
      this.keyboardType});

  final TextEditingController controller;
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscurePassword;
  final String? hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label:',
          style: const TextStyle(
            color: AppColors.secondaryText,
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        CustomeTextField(
            controller: controller,
            obscurePassword: obscurePassword,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            keyboardType:keyboardType,
            ),
      ],
    );
  }
}

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    super.key,
    required this.controller,
    required this.obscurePassword,
    required this.prefixIcon,
    required this.suffixIcon,
    this.hintText,
    this.keyboardType,
  });

  final TextEditingController controller;
  final bool obscurePassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
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
        obscureText: obscurePassword,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          isDense: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.only(
            left: 10,
            right: 5,
            top: 11,
            bottom: 11,
          ),
        ),
      ),
    );
  }
}
