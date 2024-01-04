import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_textfield.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulHookWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final obscurePassword = useState(true);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
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
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anmeldung',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Bitte einloggen zum Fortfahren',
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
              const SizedBox(height: 20),
              CustomTextField(
                controller: emailController,
                label: 'Email',
                prefixIcon: const Icon(Icons.email),
                obscurePassword: false,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                controller: passwordController,
                label: 'Passwort',
                prefixIcon: const Icon(Icons.lock),
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
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Sie haben noch kein Konto? ',
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
                      context.go('/${AppRoutes.SignupFirstScreen.name}');
                    },
                    child: const Text(
                      'Registrieren',
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
              ),
              const SizedBox(height: 20.0),
              CustomButton(
                onTap: () {},
                buttonName: 'Anmeldung',
                topbottom: 15,
                leftright: 80,
                buttonColor: const Color(0xFF041675),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
