import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeUserProfile extends StatelessWidget {
  const HomeUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/profile.png'),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 21,
                  ),
                  children: [
                    TextSpan(
                      text: '‘Ia orana ',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    TextSpan(text: 'Hinanui'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'Voir mon profil',
                  style: TextStyle(
                    fontSize: 9,
                    color: MyTheme.mainColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
