import 'package:construction_app/src/constants/constant.dart';
import 'package:construction_app/src/features/authentication/presentation/widgets/custom_textfield.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SignupFirstScreen extends StatefulHookWidget {
  const SignupFirstScreen({Key? key}) : super(key: key);

  @override
  _SignupFirstScreenState createState() => _SignupFirstScreenState();
}

class _SignupFirstScreenState extends State<SignupFirstScreen> {
  bool _obscurePassword = true;

  @override
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final obscurePassword = useState(true);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
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
                    'Neues Konto',
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
              CustomTextField(
                controller: firstNameController,
                label: 'Vorname',
                obscurePassword: false,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: lastNameController,
                label: 'Nachname',
                obscurePassword: false,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: emailController,
                label: 'Email',
                prefixIcon: const Icon(Icons.email_outlined),
                obscurePassword: false,
              ),
              const SizedBox(height: 10.0),
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
              const SizedBox(height: 8.0),
              const Text(
                'Passwort muss aus mindestens 8 Zeichen \nbestehen',
                style: TextStyle(
                  color: Color(0xFF041675),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              const SizedBox(height: 24.0),
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
                        color: Color(0xFF041675),
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0,
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
