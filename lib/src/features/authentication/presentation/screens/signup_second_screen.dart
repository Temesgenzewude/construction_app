import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/country_phone_code.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/drop_down_selection.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SignupSecondScreen extends HookWidget {
  SignupSecondScreen({super.key});
  final List<Map<String, dynamic>> companies = [
    {
      'name': 'Ethiopia',
    },
    {
      'name': 'United Kingdom',
    },
    {
      'name': 'Australia',
    },
  ];
  final List<Map<String, dynamic>> countriesCode = [
    {
      'code': '+251',
      'flag': "Et",
    },
    {
      'code': '+44',
      'flag': "UK",
    },
    {
      'code': '+61',
      'flag': "Au",
    },
  ];
  final List<Map<String, dynamic>> employee = [
    {
      'name': 'Wählen Mitarbeiter',
    },
    {
      'name': 'State 2',
    },
    {
      'name': 'State 3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final employeeState = useState("");
    final countryCodeState = useState("");
    final companyState = useState("");
    TextEditingController phoneNumberController = useTextEditingController();

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSizer.getHeight(context, 30.0),
              ),
              //! BACK BUTTON
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  context.goNamed(AppRoutes.SignupFirstScreen.name);
                },
              ),
              const Center(
                child: Text(
                  companyName,
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 30.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Neues konto',
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 26,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: AppSizer.getHeight(context, 8.0),
                  ),
                  const Text(
                    'Geben Sie die erforderlichen Details ein',
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 24.0),
              ),

              //! COMPANY SELECTION
              DropDownSelection(
                companies: companies,
                companyState: companyState,
                lable: 'Unternehmen',
                hintText: 'Unternehmenstyp',
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 20.0),
              ),

              //! COUNTRY CODE SELECTION
              CountryPhoneCodeInput(
                countriesCode: countriesCode,
                countryCodeState: countryCodeState,
                phoneNumberController: phoneNumberController,
              ),

              SizedBox(
                height: AppSizer.getHeight(context, 20.0),
              ),

              //! EMPLOYEE SELECTION
              DropDownSelection(
                companies: employee,
                companyState: employeeState,
                lable: 'Mitarbeiter',
                hintText: 'Wählen Mitarbeiter',
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 8.0),
              ),
              const Text(
                'Ich akzeptiere im Namen des Uternehmens \ndie Bedingungen der Abonnementvertrag \nund der Servicebeschreibung',
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 50.0),
              ),

              //!  REGISTAR BUTTON
              CustomButton(
                onTap: () {
                  context.goNamed(AppRoutes.PremiumPlanScreen.name);
                },
                buttonName: 'Registrieren',
                topbottom: 15,
                leftright: 80,
                buttonColor: AppColors.primary,
                textColor: AppColors.secondary,
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 8.0),
              ),
              Row(
                children: [
                  const Text(
                    'Sie haben bereits ein Konto? ',
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.goNamed(AppRoutes.LoginScreen.name);
                    },
                    child: const Text(
                      'Anmeldung',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
