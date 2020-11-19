import 'package:ecoShop/models/products_provider.dart';
import 'package:flutter/material.dart';
import './screens/navbar.dart';
import 'package:provider/provider.dart';
import 'screens/item_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        home: BottomTabs(),
        routes: {ItemDetails.path: (ctx) => ItemDetails()},
        theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'poppins'),
      ),
    );
  }
}
