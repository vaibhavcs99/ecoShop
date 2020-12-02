import 'package:ecoShop/models/order.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/order_detail_items.dart' as ord;
import '../models/order.dart';

class OrderDetails extends StatelessWidget {
  static const path = '/order-details';
  @override
  Widget build(BuildContext context) {
    final orderId = ModalRoute.of(context).settings.arguments as String;
    final orderedItem =
        Provider.of<Orders>(context, listen: false).findById(orderId);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Order Details',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: orderedItem.products.length,
          itemBuilder: (ctx, i) => ord.OrderItem(
              orderedItem.products.toList()[i].id,
              orderedItem.products.toList()[i].title,
              orderedItem.products.toList()[i].price,
              orderedItem.products.toList()[i].quantity,
              orderedItem.products.toList()[i].imageUrl)),
    );
  }
}
