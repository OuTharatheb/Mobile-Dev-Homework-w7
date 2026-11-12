import 'package:flutter/material.dart';

// EX 3 – The products (handout page: EX 3)
// Part 1: build ONE product card (images are in assets/ex3/).
// Part 2: create the Product enum (follow the UML in the handout).
// Part 3: extract the card into a StatelessWidget called ProductCard.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(product: Product.dart),
              SizedBox(height: 5),
              ProductCard(product: Product.flutter),
              SizedBox(height: 5),
              ProductCard(product: Product.firebase),
              SizedBox(height: 5),
            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}
enum Product {
  dart(
    'Dart',
    'The best object language',
    'assets/ex3/dart.png',
  ),
  flutter(
    'Flutter',
    'The best mobile widget library',
    'assets/ex3/flutter.png',
  ),
  firebase(
    'Firebase',
    'The best cloud database',
    'assets/ex3/firebase.png',
  );

  final String name;
  final String description;
  final String imagePath;

  const Product(this.name, this.description, this.imagePath);
}
class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 114, 216, 50),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(product.imagePath),
            width: 80,
            height: 80,
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              product.name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              product.description,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ), 
        ],
      ),
    );
  }
}
