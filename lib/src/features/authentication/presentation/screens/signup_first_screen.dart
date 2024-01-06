import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_textfield.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SignupFirstScreen extends HookWidget {
  const SignupFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final obscurePassword = useState(true);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
   

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSizer.getHeight(context, 70.0),
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
                    'Neues Konto',
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
              CustomTextField(
                controller: firstNameController,
                label: 'Vorname',
                obscurePassword: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 20.0),
              ),
              CustomTextField(
                controller: lastNameController,
                label: 'Nachname',
                obscurePassword: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 20.0),
              ),
              CustomTextField(
                controller: emailController,
                label: 'Email',
                prefixIcon: const Icon(Icons.email_outlined),
                obscurePassword: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 20.0),
              ),
              CustomTextField(
                controller: passwordController,
                label: 'Passwort',
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscurePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    obscurePassword.value = !obscurePassword.value;
                  },
                ),
                obscurePassword: obscurePassword.value,
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 8.0),
              ),
              const Text(
                'Passwort muss aus mindestens 8 Zeichen \nbestehen',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 8.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go('/${AppRoutes.SignupSecondScreen.name}');
                    },
                    child: const Text(
                      'Nächste',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
