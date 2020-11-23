import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';
import '../widgets/cart_item.dart' as carti;

class CartScreen extends StatelessWidget {
  static const path = '/cart-screen';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Cart",
          style: TextStyle(fontFamily: 'pacifico', color: Colors.black),
        ),
        elevation: 0.5,
      ),
      body: ListView.builder(
        itemCount: cart.itemCount,
        itemBuilder: (ctx, i) => carti.CartItem(
            cart.items.values.toList()[i].id,
            cart.items.values.toList()[i].title,
            cart.items.values.toList()[i].price,
            cart.items.values.toList()[i].quantity,
            cart.items.values.toList()[i].imageUrl),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: InkWell(
              child: Container(
                padding: EdgeInsets.all(8.0),
                height: 48.0,
                child: Center(
                  child: Text('Add to Cart'),
                ),
              ),
            ),
          ),
          Card(
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  gradient: gradientButtons,
                ),
                padding: EdgeInsets.all(8.0),
                height: 48.0,
                child: new Center(
                  child: new Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
