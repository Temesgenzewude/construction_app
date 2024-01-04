import 'package:country_code_picker/country_code_picker.dart';
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
          const SizedBox(height: 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // width: 130,
                padding:
                    const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
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
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: CountryCodePicker(
                        onChanged: (CountryCode countryCode) {},
                        // Initial selectioön and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'IT',
                        favorite: const ['+39', 'FR'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
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
                  ],
                ),
              ),
              // Expanded(
              //   flex: 1,
              //   child: Container(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
              //     clipBehavior: Clip.antiAlias,
              //     decoration: ShapeDecoration(
              //       color: Colors.white,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       shadows: const [
              //         BoxShadow(
              //           color: Color(0x3F000000),
              //           blurRadius: 2,
              //           offset: Offset(1, 1),
              //           spreadRadius: 0,
              //         ),
              //         BoxShadow(
              //           color: Color(0x3F000000),
              //           blurRadius: 2,
              //           offset: Offset(-1, -1),
              //           spreadRadius: 0,
              //         )
              //       ],
              //     ),
              //     child: TextFormField(
              //       controller: phoneNumberController,
              //       keyboardType: TextInputType.phone,
              //       decoration: const InputDecoration(
              //         border: InputBorder.none,
              //         hintText: '8559-5938-004',
              //       ),
              //       validator: (value) {
              //         if (value == null || value.isEmpty) {
              //           return 'Please enter a phone number';
              //         }
              //         return null;
              //       },
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
