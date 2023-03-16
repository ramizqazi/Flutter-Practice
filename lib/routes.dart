import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';

Map<String, Widget Function(BuildContext)> routes() {
  String loginRoute = '/login';
  String homeRoute = '/home';

  return {
    "/": (context) => const LoginPage(),
    loginRoute: (context) => const LoginPage(),
    homeRoute: (context) => const Placeholder(),
  };
}