import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'home_restaurants_list_header.dart';
import 'home_restaurants_list_item.dart';

class HomeRestaurantsList extends StatelessWidget {
  const HomeRestaurantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: const [
              HomeRestaurantsListHeader(),
              HomeRestaurantsListItem(),
              HomeRestaurantsListItem(),
              HomeRestaurantsListItem(),
            ],
          ),
        ),
      ),
    );
  }
}
