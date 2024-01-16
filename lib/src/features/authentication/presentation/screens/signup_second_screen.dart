import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/country_phone_code.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_text_field.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SignupSecondScreen extends HookWidget {
  const SignupSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final unternehmenController = useTextEditingController();
    final mitarbeiterController = useTextEditingController();
    final countryCodeState = useState("");
    TextEditingController phoneNumberController = useTextEditingController();

    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.goNamed(AppRoutes.SignupFirstScreen.name);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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

              //! COMPANY
              TextFieldWithlabel(
                controller: unternehmenController,
                label: 'Unternehmen',
                obscurePassword: false,
                hintText: 'Unternehmenstyp',
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 20.0),
              ),

              //! COUNTRY CODE SELECTION
              CountryPhoneCodeInput(
                countryCodeState: countryCodeState,
                phoneNumberController: phoneNumberController,
              ),

              SizedBox(
                height: AppSizer.getHeight(context, 20.0),
              ),

              //! EMPLOYEE
              TextFieldWithlabel(
                  controller: mitarbeiterController,
                  label: 'Mitarbeiter',
                  obscurePassword: false,
                  hintText: 'Wählen Mitarbeiter',
                  keyboardType: TextInputType.phone),
              SizedBox(
                height: AppSizer.getHeight(context, 20.0),
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
                height: 15,
                // leftright: 80,
                buttonColor: AppColors.primary,
                textColor: AppColors.secondary,
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 8.0),
              ),
              Wrap(
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
