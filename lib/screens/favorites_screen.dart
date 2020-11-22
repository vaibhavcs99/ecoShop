import 'package:ecoShop/widgets/cart_icon.dart';
import 'package:flutter/material.dart';
import '../models/products_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/product_item.dart';

class Favoritescreen extends StatefulWidget {
  @override
  _FavoritescreenState createState() => _FavoritescreenState();
}

class _FavoritescreenState extends State<Favoritescreen> {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.favoriteItems;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        title: Text(
          "Favorites",
          style: TextStyle(fontFamily: 'pacifico', color: Colors.black),
        ),
        elevation: 0.5,
        actions: [CartIcon()],
      ),
      body: GridView.builder(
        //padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: products[i],
          child: ProductItem(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 63 / 100),
      ),
    );
  }
}
