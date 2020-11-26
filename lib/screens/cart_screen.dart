import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../models/cart.dart' show Cart;
import 'package:provider/provider.dart';
import '../models/orders.dart';
import '../widgets/cart_item.dart' as carti;

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
      body: ListView.builder(
        itemCount: cart.itemCount,
        itemBuilder: (ctx, i) => carti.CartItem(
            cart.items.values.toList()[i].id,
            cart.items.values.toList()[i].title,
            cart.items.values.toList()[i].price,
            cart.items.values.toList()[i].quantity,
            cart.items.values.toList()[i].imageUrl),
      ),
      bottomNavigationBar: 
      Container(
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 15),
        child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              child: Container(
                padding: EdgeInsets.all(8.0),
                height: 45.0,
                child: Center(
                  child: Text('\ Cart Total: ${cart.totalAmount}'),
                ),
              ),
            ),
          
          InkWell(
              onTap: (){
                Provider.of<Orders>(context, listen: false).addOrder(
                  cart.items.values.toList(),
                  cart.totalAmount,
                  );
                  cart.clear();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: gradientButtons,
                ),
                padding: EdgeInsets.all(10.0),
                height: 45.0,
                child: new Center(
                  child: new Text(
                    'Place Order',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          
        ],
      ),
      ),
    );
  }
}
