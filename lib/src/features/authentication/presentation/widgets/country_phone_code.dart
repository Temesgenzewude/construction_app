import 'package:construction_app/src/constants/colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryPhoneCodeInput extends StatelessWidget {
  const CountryPhoneCodeInput({
    super.key,
    required this.countryCodeState,
    required this.phoneNumberController,
  });

  final ValueNotifier<String> countryCodeState;
  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Telefon:',
          style: TextStyle(
            color: AppColors.secondaryText,
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        const SizedBox(height: 2),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 11),
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
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CountryCodePicker(
                    padding: const EdgeInsets.all(0),
                    onChanged: (CountryCode countryCode) {},
                    initialSelection: 'IT',
                    favorite: const ['+39', 'FR'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                    flagWidth: 20.0,
                  ),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.18),
              Expanded(
                child: TextFormField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '8559-5938-004',
                  ),
                  textAlign: TextAlign.end,
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
      ],
    );
  }
}
