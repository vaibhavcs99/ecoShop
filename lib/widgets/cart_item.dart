import 'package:flutter/material.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String prodId;
  final String title;
  final double price;
  final int quantity;
  final String imageUrl;
  CartItem(this.id, this.prodId, this.title, this.price, this.quantity,
      this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Dismissible(
        background: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(color: Color(0xFFFFE6E6)),
          child: Row(
            children: [
              Spacer(),
              Icon(
                Icons.delete_outline,
                color: Colors.red,
              )
            ],
          ),
        ),
        key: ValueKey(id),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          Provider.of<Cart>(context, listen: false).removeItem(prodId);
        },
        child: Card(
          elevation: 0.1,
          child: ListTile(
            leading: Image.network(imageUrl),
            title: Text(title),
            subtitle: Text(price.toString()),
            trailing: Text('x$quantity'),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}
