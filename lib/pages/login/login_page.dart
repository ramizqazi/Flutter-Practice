// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login/widgets/login_input.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/app-logo.png',
                width: 133,
                height: 115,
              ),
              const SizedBox(
                width: 100,
                height: 70,
              ),
              const LoginInput(
                isProtectedInput: false,
                label: 'Identifiant',
                hint: 'mail@mail.pf',
              ),
              const SizedBox(
                width: 100,
                height: 25,
              ),
              const LoginInput(
                  isProtectedInput: true,
                  label: 'Mot de passe',
                  hint: 'Loremipsum'),
              const SizedBox(
                width: 100,
                height: 21,
              ),
              const Text(
                'Mot de passe oublié',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(vertical: 16),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              const StadiumBorder(),
            ),
          ),
          child: Text(
            'Connexion',
            style: TextStyle(
              fontSize: 16,
              color: context.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
