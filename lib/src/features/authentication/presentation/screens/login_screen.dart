import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_text_field.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final obscurePassword = useState(true);

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizer.getHeight(context, 10.0)),
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
              SizedBox(height: AppSizer.getHeight(context, 20.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Anmeldung',
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 26,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppSizer.getHeight(context, 8.0)),
                  const Text(
                    'Bitte einloggen zum Fortfahren',
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 20.0)),
              TextFieldWithlabel(
                controller: emailController,
                label: 'Email',
                prefixIcon: const Icon(Icons.email_outlined),
                obscurePassword: false,
              ),
              SizedBox(height: AppSizer.getHeight(context, 20.0)),
              TextFieldWithlabel(
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
              SizedBox(height: AppSizer.getHeight(context, 8.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Sie haben noch kein Konto? ',
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.goNamed(AppRoutes.SignupFirstScreen.name);
                    },
                    child: const Text(
                      'Registrieren',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 20.0)),
              CustomButton(
                onTap: () {},
                buttonName: 'Anmeldung',
                topbottom: 15,
                leftright: 80,
                buttonColor: AppColors.primary,
                textColor: AppColors.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
