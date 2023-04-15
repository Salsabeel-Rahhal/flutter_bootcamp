import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;

  Product({required this.name, required this.description, required this.price});
}

class ProductsPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Product 1',
      description: 'This is product 1',
      price: 9.99,
    ),
    Product(
      name: 'Product 2',
      description: 'This is product 2',
      price: 19.99,
    ),
    Product(
      name: 'Product 3',
      description: 'This is product 3',
      price: 29.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products Page'),
      ),
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
