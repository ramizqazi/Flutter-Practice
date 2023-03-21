import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/widgets/home_app_bar.dart';
import 'package:flutter_application_1/pages/home/widgets/home_balance_card.dart';
import 'package:flutter_application_1/pages/home/widgets/home_feature_card.dart';
import 'package:flutter_application_1/pages/home/widgets/home_restaurants_list/home_restaurants_list.dart';
import 'package:flutter_application_1/pages/home/widgets/home_user_profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        children: [
          const HomeUserProfile(),
          const HomeBalanceCard(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeFeatureCard(title: 'Restaurants', icon: 'assets/van.png'),
              const SizedBox(width: 16),
              HomeFeatureCard(title: 'Mon QR Code', icon: 'assets/qr.png'),
            ],
          ),
          const HomeRestaurantsList(),
          Expanded(child: Image.asset('assets/food-deal.png')),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/home-footer-logo.png',
                      width: 100, height: 80),
                  Image.asset('assets/home-footer-text.png',
                      width: 220, height: 100)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
