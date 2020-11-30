import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../widgets/badge.dart';
import '../screens/cart_screen.dart';

class CartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Consumer<Cart>(
      builder: (_, cart, ch) => Badge(
        child: ch,
        value: cart.itemCount.toString(),
      ),
      child: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.of(context)
                .pushNamed(CartScreen.path, arguments: cart.items);
          }),
    );
  }
}
