class Product {
  int id;
  String name;
  String description;
  String image;
  int qty = 0;
  Product({
    required this.description,
    required this.id,
    required this.name,
    required this.image,
    required this.qty,
  });
}
