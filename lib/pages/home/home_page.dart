import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/widgets/home_app_bar.dart';
import 'package:flutter_application_1/pages/home/widgets/home_balance_card.dart';
import 'package:flutter_application_1/pages/home/widgets/home_feature_card.dart';
import 'package:flutter_application_1/pages/home/widgets/home_user_profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
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
            )
          ],
        ),
      ),
    );
  }
}
