import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeRestaurantsListItem extends StatefulWidget {
  const HomeRestaurantsListItem({super.key});

  @override
  State<HomeRestaurantsListItem> createState() =>
      _HomeRestaurantsListItemState();
}

class _HomeRestaurantsListItemState extends State<HomeRestaurantsListItem> {
  bool passwordToggle = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.2,
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset('assets/sunset-logo.png', width: 26, height: 26),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sunset Beach Club',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: const [
                      Text(
                        '13 Mai 2022',
                        style: TextStyle(fontSize: 8),
                      ),
                      Text(
                        '   • 384937503025',
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                  children: [
                    TextSpan(
                      text: passwordToggle ? '-2 000' : '*****',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: '  XRF'),
                  ],
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, top: 19, bottom: 19),
                  child: Icon(
                    size: 13,
                    passwordToggle
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash,
                    color: MyTheme.mainColor,
                  ),
                ),
                onTap: () => setState(() {
                  passwordToggle = !passwordToggle;
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
