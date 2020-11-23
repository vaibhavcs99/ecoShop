import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products_provider.dart';

class ItemDetails extends StatelessWidget {
  static const path = '/item-detail';
  @override
  Widget build(BuildContext context) {
    final prodId = ModalRoute.of(context).settings.arguments as String;
    final productList =
        Provider.of<Products>(context, listen: false).findById(prodId);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          productList.title,
          style: TextStyle(color: Colors.black, fontFamily: 'poppins'),
        ),
      ),
      body: Center(child: Text(productList.description)),
    );
  }
}
