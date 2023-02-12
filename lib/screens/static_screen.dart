import 'package:flutter/material.dart';

class StaticScreen extends StatelessWidget {
  const StaticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        "ONLY THIS",
        style: TextStyle(color: Colors.amber, fontSize: 44),
      ),
    );
  }
}
