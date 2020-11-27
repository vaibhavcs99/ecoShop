import 'package:ecoShop/shared/cart_icon.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/grid_builder.dart';

class CategoryScreen extends StatelessWidget {
  final List<Product> loadedProducts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        title: Text(
          "Categories",
          style: TextStyle(fontFamily: 'pacifico', color: Colors.black),
        ),
        elevation: 0.5,
        actions: [CartIcon()],
      ),
      body: ProductGrid(),
    );
  }
}
