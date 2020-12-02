import 'package:ecoShop/screens/order_complete.dart';
import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../models/order.dart';
import '../models/cart.dart' show Cart;
import 'package:provider/provider.dart';

class PaymentScreen extends StatelessWidget {
  static const path = '/payment';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Payment Options",
          style: TextStyle(fontFamily: 'pacifico', color: Colors.black),
        ),
        elevation: 0.5,
      ),
      bottomNavigationBar: Container(
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
                    Provider.of<Orders>(context, listen: false).addOrder(
                      cart.items.values.toList(),
                      cart.totalAmount,
                    );
                    cart.clear();
                    Navigator.of(context).pushNamed(OrderComplete.path);
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: gradientButtons),
                    padding: EdgeInsets.all(10.0),
                    height: 45.0,
                    child: Center(
                      child: Text(
                        '  Confirm  ',
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
