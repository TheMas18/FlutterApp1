class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 11",
        desc: "Apple iphone 11 64gb red",
        price: 999,
        color: "red",
        image: "././assets/images/ProductImages/Smartphones/iphone11red1.jpg")
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
