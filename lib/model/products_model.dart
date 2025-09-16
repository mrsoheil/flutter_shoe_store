class Product {
  final String name;
  final String price;
  final String imagePath;

  Product({required this.name, required this.price, required this.imagePath});
}

List<Product> productList = [
  Product(name: "Jordan", price: "\$5", imagePath: "assets/images/blue2.png"),
  Product(name: "Nike", price: "\$10", imagePath: "assets/images/black1.png"),
  Product(name: "Adidas", price: "\$15", imagePath: "assets/images/orange2.png"),
  Product(name: "Puma", price: "\$20", imagePath: "assets/images/red2.png"),
];
