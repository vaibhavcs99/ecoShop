import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../models/cart.dart' show Cart;
import 'package:provider/provider.dart';
import '../widgets/cart_item.dart' as carti;
import 'order_confirm.dart';

class CartScreen extends StatelessWidget {
  static const path = '/cart-screen';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
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
      body: cart.itemCount == 0
          ? Container(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'No Items In the cart',
                      style: TextStyle(fontSize: 50),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('/', (route) => false);
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: gradientButtons),
                        padding: EdgeInsets.all(10.0),
                        height: 45.0,
                        child: Center(
                          child: Text(
                            'Shop Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : ListView.builder(
              itemCount: cart.itemCount,
              itemBuilder: (ctx, i) => carti.CartItem(
                  cart.items.values.toList()[i].id,
                  cart.items.keys.toList()[i],
                  cart.items.values.toList()[i].title,
                  cart.items.values.toList()[i].price,
                  cart.items.values.toList()[i].quantity,
                  cart.items.values.toList()[i].imageUrl),
            ),
      bottomNavigationBar: cart.itemCount == 0
          ? null
          : Container(
              child: Card(
                margin: EdgeInsets.only(bottom: 15),
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        height: 45.0,
                        child: Center(
                          child: Text('\ Cart Total: ${cart.totalAmount}'),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        onTap: () {
                          //Provider.of<Orders>(context, listen: false).addOrder(
                          // cart.items.values.toList(),
                          // cart.totalAmount,
                          //);
                          //cart.clear();
                          Navigator.of(context).pushNamed(OrderConfirm.path,
                              arguments: cart.items);
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              gradient: gradientButtons),
                          padding: EdgeInsets.all(10.0),
                          height: 45.0,
                          child: Center(
                            child: Text(
                              'Place Order',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
