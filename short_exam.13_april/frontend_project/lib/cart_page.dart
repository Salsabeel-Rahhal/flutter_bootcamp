import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;

  Product({required this.name, required this.description, required this.price});
}

class CartPage extends StatefulWidget {
  final List<Product> products;

  CartPage({required this.products});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: widget.products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = widget.products[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.description),
                  trailing: Text('\$${product.price.toStringAsFixed(2)}'),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Address',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final address = _addressController.text;
              // TODO: Implement submit functionality
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
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
        title: Text('Home Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => CartPage(products: products),
              ));
            },
          ),
        ],
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
