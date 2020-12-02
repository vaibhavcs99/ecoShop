import 'package:ecoShop/screens/order_detail.dart';
import 'package:flutter/material.dart';
import '../models/order.dart' as ord;
import 'package:intl/intl.dart';

class OrderDetail extends StatelessWidget {
  final ord.OrderItem order;
  OrderDetail(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(OrderDetails.path, arguments: order.id);
            },
            title: Text('\₹${order.amount}'),
            subtitle: Text(
              DateFormat('dd MM yyyy hh:mm').format(order.dateTime),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
