import 'package:ecoShop/models/products_provider.dart';
import 'package:ecoShop/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import './screens/navbar.dart';
import 'package:provider/provider.dart';
import 'screens/item_details.dart';
import 'models/cart.dart';
import './models/orders.dart';
import './screens/profile_screen/orders_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        )
      ],
      child: MaterialApp(
        home: BottomTabs(),
        routes: {
          ItemDetails.path: (ctx) => ItemDetails(),
          CartScreen.path: (ctx) => CartScreen(),
          OrderScreen.routeName: (ctx) => OrderScreen(),
        },
        theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'poppins'),
      ),
    );
  }
}
