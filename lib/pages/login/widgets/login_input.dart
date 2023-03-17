import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({
    Key? key,
    this.label,
    this.hint,
    required this.isProtectedInput,
  }) : super(key: key);

  final String? label;
  final String? hint;
  final bool isProtectedInput;

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  bool passwordToggle = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: 3,
        top: 8, // 5 top and bottom
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.white),
      ),
      child: widget.isProtectedInput
          ? SizedBox(
              height: 40,
              child: TextField(
                obscureText: passwordToggle,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/password-icon.svg"),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      size: 13,
                      passwordToggle
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                    ),
                    onPressed: () => setState(() {
                      passwordToggle = !passwordToggle;
                    }),
                  ),
                  labelText: 'Mot de passe',
                  hintText: 'Loremipsum',
                ),
              ),
            )
          : SizedBox(
              height: 40,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/user-icon.svg"),
                  ),
                  labelText: widget.label,
                  hintText: widget.hint,
                ),
              ),
            ),
    );
  }
}
