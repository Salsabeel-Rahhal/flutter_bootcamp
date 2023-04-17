import 'package:flutter/material.dart';
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

class ProductsPage extends StatelessWidget {
  final List<Product> products = [
    Product(
        id: 1,
        name: "iPhone 9",
        description: "An apple mobile which is nothing like apple",
        price: 20,
        image: "https://i.dummyjson.com/data/products/1/1.jpg"),
    Product(
        id: 2,
        name: "iPhone X",
        description:
            "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
        image: "https://i.dummyjson.com/data/products/2/1.jpg",
        price: 80),
    Product(
        id: 3,
        name: "Samsung Universe 9",
        description:
            "Samsung's new variant which goes beyond Galaxy to the Universe",
        image: "https://i.dummyjson.com/data/products/3/1.jpg",
        price: 45),
    Product(
        id: 4,
        name: "OPPOF19",
        description: "OPPO F19 is officially announced on April 2021.",
        image: "https://i.dummyjson.com/data/products/4/1.jpg",
        price: 20)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text('Add to Cart'),
            ),
          );
        },
      ),
    );
  }
}
