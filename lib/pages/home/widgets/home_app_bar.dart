import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: MyTheme.borderColor, width: 0.3),
        ),
      ),
      child: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: SizedBox(
          height: 30,
          child: SvgPicture.asset("assets/icons/app-logo-text-icon.svg"),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/menu-icon.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
