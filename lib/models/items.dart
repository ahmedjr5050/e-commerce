// ignore_for_file: public_member_api_docs, sort_constructors_first
class Item {
  String imgPath;
  double price;
  String? loctaion;
  String? name;
  Item(
      {required this.imgPath,
      required this.price,
      this.name,
      this.loctaion = "Ahmed shop"});
}

final List<Item> items = [
  Item(name: "product1" ,price: 12.99, imgPath: "assets/img/1.webp", loctaion: 'ahmed shop'),
  Item(name: "product2" ,price: 500.99, imgPath: "assets/img/2.webp", loctaion: 'radwan shop'),
  Item(name: "product3" ,price: 120.99, imgPath: "assets/img/3.webp", loctaion: 'mohamed'),
  Item(name: "product4" ,price: 130.99, imgPath: "assets/img/4.webp"),
  Item(name: "product5" ,price: 14.99, imgPath: "assets/img/5.webp"),
  Item(name: "product6" ,price: 1660.99, imgPath: "assets/img/6.webp"),
  Item(name: "product7" ,price: 1266.99, imgPath: "assets/img/7.webp"),
  Item(name: "product8" ,price: 12222.99, imgPath: "assets/img/8.webp"),
];
