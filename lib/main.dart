import 'package:ecoShop/models/products_provider.dart';
import 'package:ecoShop/screens/cart_screen.dart';
import 'package:ecoShop/screens/order_complete.dart';
import 'package:ecoShop/screens/order_confirm.dart';
import 'package:ecoShop/screens/payment_screen.dart';
import 'package:flutter/material.dart';
import './screens/navbar.dart';
import 'package:provider/provider.dart';
import 'screens/item_details.dart';
import 'models/cart.dart';
import 'models/order.dart';
import './screens/profile_screen/orders_screen.dart';
import 'screens/order_detail.dart';

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
          OrderDetails.path: (ctx) => OrderDetails(),
          OrderConfirm.path: (ctx) => OrderConfirm(),
          OrderComplete.path: (ctc) => OrderComplete(),
          PaymentScreen.path: (ctx) => PaymentScreen(),
        },
        theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'poppins'),
      ),
    );
  }
}
