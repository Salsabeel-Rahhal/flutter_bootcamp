import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  int id;
  String name;
  String description;
  String image;
  int price;
  bool selected = false;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.image});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json["name"] ?? 0,
      id: json["id"] ?? 0,
      image: json["image"] ?? "",
      price: json["price"] ?? "",
      // current_qty: json["current_qty"] ?? "",
      description: json["description"] ?? "",
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "image": image,
      "id": id.toString(),
      "price": price.toString(),
      "description": description,
    };
  }
}
