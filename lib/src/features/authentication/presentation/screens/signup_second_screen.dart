import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/country_phone_code.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/drop_down_selection.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SignupSecondScreen extends StatefulHookWidget {
  const SignupSecondScreen({super.key});

  @override
  _SignupSecondScreenState createState() => _SignupSecondScreenState();
}

class _SignupSecondScreenState extends State<SignupSecondScreen> {
  List<Map<String, dynamic>> countries = [
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
  List<Map<String, dynamic>> countriesCode = [
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
  List<Map<String, dynamic>> states = [
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
    final countryState = useState("");
    final countryCodeState = useState("");
    final countryStateState = useState("");
    TextEditingController phoneNumberController = useTextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              //! BACK BUTTON
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  context.go("/${AppRoutes.SignupFirstScreen.name}")  ;
                },
              ),
              const Center(
                child: Text(
                  companyName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Neues konto',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Geben Sie die erforderlichen Details ein',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              //! COUNTRY SELECTION
              DropDownSelection(
                countries: states,
                countryState: countryState,
                lable: 'Unternehmen',
                hintText: 'Unternehmenstyp',
              ),
              const SizedBox(height: 10),

              //! COUNTRY CODE SELECTION
              CountryPhoneCodeInput(
                countriesCode: countriesCode,
                countryCodeState: countryCodeState,
                phoneNumberController: phoneNumberController,
              ),

              //! COUNTRY STATE SELECTION
              DropDownSelection(
                countries: countries,
                countryState: countryStateState,
                lable: 'Mitarbeiter',
                hintText: 'Wählen Mitarbeiter',
              ),
              const SizedBox(height: 8),
              const Text(
                'Ich akzeptiere im Namen des Uternehmens \ndie Bedingungen der Abonnementvertrag \nund der Servicebeschreibung',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              const SizedBox(height: 50.0),

              //!  REGISTAR BUTTON
              CustomButton(
                onTap: () {
                  context.go('/${AppRoutes.PlanScreen.name}');
                },
                buttonName: 'Registrieren',
                topbottom: 15,
                leftright: 80,
                buttonColor: const Color(0xFF041675),
                textColor: Colors.white,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    'Sie haben bereits ein Konto? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.go('/${AppRoutes.LoginScreen.name}');
                    },
                    child: const Text(
                      'Anmeldung',
                      style: TextStyle(
                        color: Color(0xFF041675),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
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
