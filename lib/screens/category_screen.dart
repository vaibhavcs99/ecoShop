import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/grid_builder.dart';

class Categoryscreen extends StatelessWidget {
  final List<Product> loadedProducts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Shopping App",
          style: TextStyle(fontFamily: 'pacifico', color: Colors.black),
        ),
        elevation: 0.5,
      ),
      body: ProductGrid(),
    );
  }
}


