import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final List<String> selectedProducts;
  CartPage({Key? key, required this.selectedProducts}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String _address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Selected Products:'),
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: widget.selectedProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(widget.selectedProducts[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Text('Enter Address:'),
            SizedBox(height: 8.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  _address = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your address...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Submit button logic goes here
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
