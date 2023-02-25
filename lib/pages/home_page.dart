import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
