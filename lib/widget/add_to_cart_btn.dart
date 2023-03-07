import 'package:flutter/material.dart';
import 'package:flutter_application_1/modals/cart.dart';
import 'package:flutter_application_1/modals/catelog.dart';
import 'package:flutter_application_1/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCartBtn extends StatefulWidget {
  final Item catelog;

  const AddToCartBtn({super.key, required this.catelog});

  @override
  State<AddToCartBtn> createState() => _AddToCartBtnState();
}

class _AddToCartBtnState extends State<AddToCartBtn> {
  final cart = CartModal();

  @override
  Widget build(BuildContext context) {
    bool isInCart = cart.items.contains(widget.catelog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          final catelog = CatelogModal();

          cart.catelog = catelog;
          cart.add(widget.catelog);
          setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Text('Buy'),
    );
  }
}
