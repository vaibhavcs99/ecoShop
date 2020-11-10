import 'package:flutter/material.dart';
import '../widgets/product_item.dart';
import '../models/product.dart';

class Categoryscreen extends StatelessWidget {
  List<Product> loadedProducts = [
    Product(
        id: "001",
        title: "Hamburger",
        imageUrl: "https://picsum.photos/500",
        price: 25,
        description: "Very nice Hamburger",
        favorite: false),
    Product(
        id: "002",
        title: "Pasta",
        imageUrl: "https://picsum.photos/500",
        price: 25,
        description: "Very nice Pasta",
        favorite: false),
    Product(
        id: "003",
        title: "Akara",
        imageUrl: "https://picsum.photos/500",
        price: 25,
        description: "Very nice Akara",
        favorite: false),
    Product(
        id: "004",
        title: "Strawberry",
        imageUrl: "images/1.png",
        price: 50,
        description: "https://picsum.photos/500",
        favorite: false),
    Product(
        id: "005",
        title: "Coca-Cola",
        imageUrl: "https://picsum.photos/500",
        price: 45,
        description: "Very nice Drink",
        favorite: false),
    Product(
        id: "006",
        title: "Lemonade",
        imageUrl: "https://picsum.photos/500",
        price: 28,
        description: "Very nice Lemonade",
        favorite: false),
    Product(
        id: "007",
        title: "Vodka",
        imageUrl: "https://picsum.photos/500",
        price: 78,
        description: "Very nice Vodka",
        favorite: false),
    Product(
        id: "008",
        title: "Tequila",
        imageUrl: "https://picsum.photos/500",
        price: 168,
        description: "Very nice Tequila",
        favorite: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => Productitem(this.loadedProducts[i].id,
            this.loadedProducts[i].title, this.loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
