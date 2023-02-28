import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/modals/catelog.dart';
import 'package:flutter_application_1/widget/drawer.dart';
import 'package:flutter_application_1/widget/item_widget.dart';

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
      appBar: AppBar(
        title: const Text("Catalog App"),
        centerTitle: true,
      ),
      body: CatelogModal.items != null
          ? ListView.builder(
              padding: const EdgeInsets.all(18),
              itemCount: CatelogModal.items!.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: CatelogModal.items![index],
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(color: Colors.deepPurple),
            ),
      drawer: MyDrawer(),
    );
  }
}
