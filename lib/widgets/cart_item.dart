import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final int quantity;
  final String imageUrl;
  CartItem(this.id, this.title, this.price, this.quantity, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        child: ListTile(
          leading: Image.network(imageUrl),
          title: Text(title),
          subtitle: Text(price.toString()),
          trailing: Text('x$quantity'),
          isThreeLine: true,
        ),
      ),
    );
  }
}
