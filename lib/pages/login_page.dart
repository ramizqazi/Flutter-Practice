// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordToggle = false;

  void togglePassword() {
    setState(() {
      !passwordToggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(passwordToggle);
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
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(FontAwesomeIcons.user, size: 19),
                  labelText: 'Identifiant',
                  hintText: 'mail@mail.pf',
                ),
              ),
              const SizedBox(
                width: 100,
                height: 25,
              ),
              TextField(
                obscureText: passwordToggle,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/password-icon.png',
                    width: 1,
                    height: 1,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      size: 18,
                      passwordToggle
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                    ),
                    onPressed: () => setState(() {
                      passwordToggle = !passwordToggle;
                    }),
                  ),
                  labelText: 'Mot de passe',
                  hintText: 'Loremipsum',
                ),
              ),
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
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            )),
        child:
            const Text('Connexion', style: TextStyle(color: MyTheme.mainColor)),
      ),
    );
  }
}
