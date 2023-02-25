class CatelogModal {
  static final items = [
    Item(
      1,
      "Iphone 12 Pro",
      "Apple Iphone 12th generation mobile",
      15000,
      "#3305a",
      'https://pngimg.com/uploads/iphone_12/iphone_12_PNG25.png',
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
