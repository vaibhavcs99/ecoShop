import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../models/cart.dart' show Cart;
import 'package:provider/provider.dart';
import 'payment_screen.dart';

class OrderConfirm extends StatelessWidget{
  static const path = '/order-confirm';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Confirm Order",
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
                    //Provider.of<Orders>(context, listen: false).addOrder(
                     // cart.items.values.toList(),
                     // cart.totalAmount,
                    //);
                    //cart.clear();
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => PaymentScreen()),
                    );
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: gradientButtons),
                    padding: EdgeInsets.all(10.0),
                    height: 45.0,
                    child: Center(
                      child: Text(
                        'Proceed to Pay',
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
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(left: 35,right: 35,top: 15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),            
            Text(
              "Name",
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'poppins',
                color: Colors.grey,
              ),
            ),
            TextFormField(
              initialValue: "Sachin Mohite",
              decoration: new InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10,right: 10),
                ),
            ),
            Divider(height:5,),
            Text(
              "Phone",
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'poppins',
                color: Colors.grey,
              ),
            ),
            TextFormField(
              initialValue: "+91 9168091302",
              decoration: new InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10,right: 10),
                ),
            ),
            Divider(height:5,),
            Text(
              "Note",
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'poppins',
                color: Colors.grey,
              ),
            ),
            TextFormField(
              decoration: new InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10,right: 10),
                hintText: 'Note for the delivery agent',
                ),
            ),
            Divider(height:5,),
            Text(
              "Address",
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'poppins',
                color: Colors.grey,
              ),
            ),
            TextFormField(
              decoration: new InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10,right: 10),
                hintText: 'Select Address',
                ),
            ),
            Divider(height:5,),                                    
          ]),
        ),
      ]),    
    );
  }
}