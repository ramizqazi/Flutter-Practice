import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class HomeRestaurantsListHeader extends StatelessWidget {
  const HomeRestaurantsListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.2,
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Historique',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            child: Text(
              'Voir tout',
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w500,
                color: MyTheme.mainColor,
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
