import 'package:flutter/material.dart';

class HomeBalanceCard extends StatelessWidget {
  const HomeBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      margin: const EdgeInsets.only(top: 24, bottom: 15),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          image: AssetImage("assets/card-bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Solde journalier',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: '2 000 ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'XRF'),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.arrow_downward, size: 14),
                    Text(
                      '  Solde total et condition d’utilisation',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ) /* add child content here */,
    );
  }
}
