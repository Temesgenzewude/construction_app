import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DropDownSelection extends HookWidget {
  const DropDownSelection({
    super.key,
    required this.countries,
    required this.countryState,
    required this.lable,
    required this.hintText,
  });

  final List<Map<String, dynamic>> countries;
  final ValueNotifier<String> countryState;
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
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
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
            items: countries.map((currentCountryountry) {
              return DropdownMenuItem<String>(
                value: currentCountryountry["name"],
                child: Text(currentCountryountry["name"]),
              );
            }).toList(),
            onChanged: (String? value) {
              countryState.value = value!;
            },
          ),
        ),
      ],
    );
  }
}