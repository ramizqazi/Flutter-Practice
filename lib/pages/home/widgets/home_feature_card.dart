// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomeFeatureCard extends StatelessWidget {
  String title;
  String icon;
  HomeFeatureCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 150,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: title == 'Restaurants' ? 96 : 50,
                  height: title == 'Restaurants' ? 70 : 50,
                  child: Image.asset(icon),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
