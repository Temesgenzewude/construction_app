import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CountryPhoneCodeInput extends HookWidget {
  const CountryPhoneCodeInput({
    super.key,
    required this.countriesCode,
    required this.countryCodeState,
    required this.phoneNumberController,
  });

  final List<Map<String, dynamic>> countriesCode;
  final ValueNotifier<String> countryCodeState;
  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Telefon:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 130,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        width: 1.0,
                        color: Colors.grey), // Top border for left input
                    left: BorderSide(
                        width: 1.0,
                        color: Colors.grey), // Left border for left input
                    bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey), // Bottom border for left input
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(11),
                  ),
                ),
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
                    hintText: " US(+148)",
                    border: InputBorder.none,
                  ),
                  // value: countryCodeState.value.isNotEmpty ? countryCodeState.value : null,
                  onChanged: (String? newValue) {
                    countryCodeState.value = newValue!;
                  },
                  items: countriesCode.map<DropdownMenuItem<String>>((country) {
                    return DropdownMenuItem(
                      value: country['code'],
                      child: Text(' ${country['flag']}(${country['code']})'),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a country code';
                    }
                    return null;
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1.0,
                          color: Colors.grey), // Top border for left input
                      right: BorderSide(
                          width: 1.0,
                          color: Colors.grey), // Left border for left input
                      bottom: BorderSide(
                          width: 1.0,
                          color: Colors.grey), // Bottom border for left input
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                  child: TextFormField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '8559-5938-004',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a phone number';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
