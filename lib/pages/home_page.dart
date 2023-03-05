import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/modals/catelog.dart';
import 'package:flutter_application_1/widget/themes.dart';
import 'package:flutter_application_1/widget/home_widgets/catelog_header.dart';
import 'package:flutter_application_1/widget/home_widgets/catelog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));

    // this rootBundle will get json and convert it to string
    final jsonData = await rootBundle.loadString('assets/files/catelog.json');

    // this will convert it back to json
    final decodedJsonData = jsonDecode(jsonData);
    final productsData = decodedJsonData["products"];

    CatelogModal.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        splashColor: Colors.blueGrey,
        backgroundColor:
            context.theme.floatingActionButtonTheme.backgroundColor,
        child: Icon(CupertinoIcons.cart),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.mOnly(right: 32, left: 32, top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatelogHeader(),
              if (CatelogModal.items != null)
                Expanded(child: CatelogList().pOnly(top: 16))
              else
                Expanded(
                    child: Center(child: CircularProgressIndicator().py16())),
            ],
          ),
        ),
      ),
    );
  }
}
