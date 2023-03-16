// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import '../icons/app_logo_icon_icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              const TextField(
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
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(AppLogoIcon.passwordicon, size: 19),
                  labelText: 'Identifiant',
                  hintText: 'mail@mail.pf',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
