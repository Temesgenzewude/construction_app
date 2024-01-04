import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DropDownSelection extends HookWidget {
  const DropDownSelection({
    super.key,
    required this.companies,
    required this.companyState,
    required this.lable,
    required this.hintText,
  });

  final List<Map<String, dynamic>> companies;
  final ValueNotifier<String> companyState;
  final String lable;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$lable:',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        const SizedBox(height: 2),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
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
              )
            ],
          ),
          child: DropdownButtonFormField(
            decoration: const InputDecoration(border: InputBorder.none),
            hint: Text(
              '  $hintText',
              style: const TextStyle(
                color: Color(0xFF6D6868),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            items: companies.map((currentCountryountry) {
              return DropdownMenuItem<String>(
                value: currentCountryountry["name"],
                child: Text(currentCountryountry["name"]),
              );
            }).toList(),
            onChanged: (String? value) {
              companyState.value = value!;
            },
          ),
        ),
      ],
    );
  }
}
