import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
    );
  }
}