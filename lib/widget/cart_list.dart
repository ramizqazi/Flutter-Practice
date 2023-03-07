import 'package:flutter/material.dart';
import 'package:flutter_application_1/modals/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final _cart = CartModal();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? Text("There's nothing in your cart").centered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {
                  _cart.remove(_cart.items[index].id ?? 0);
                  setState(() {});
                },
              ),
              title: Text(_cart.items[index].name ?? ''),
            ),
          );
  }
}
