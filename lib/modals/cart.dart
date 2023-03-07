// ignore_for_file: unnecessary_null_comparison

import 'package:flutter_application_1/modals/catelog.dart';

class CartModal {
  static final cartModel = CartModal._internal();

  CartModal._internal();

  factory CartModal() => cartModel;

  // Catelog field
  late CatelogModal _catelog;

  // Collection of ids - store ids of each item
  final List<int> _itemIds = [];

  // Get Catelog -getter
  CatelogModal get catelog => _catelog;

  // Set Catelog - setter
  set catelog(CatelogModal newCatelog) {
    assert(newCatelog != null);
    _catelog = newCatelog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catelog.getById(id)).toList();

  // Get total price
  num? get totalPrice =>
      items.fold(0, (total, current) => total! + current.price!);

  // Add Item
  void add(Item item) {
    _itemIds.add(item.id!);
  }

  // Remove Item
  void remove(int itemId) {
    _itemIds.remove(itemId);
  }
}
