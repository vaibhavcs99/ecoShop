import 'package:flutter/material.dart';
import '../shared/styles.dart';

class OrderComplete extends StatelessWidget {
  static const path = '/order-complete';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Thank you for ordering',
                style: TextStyle(fontSize: 50),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                },
                child: Ink(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: gradientButtons),
                  padding: EdgeInsets.all(10.0),
                  height: 45.0,
                  child: Center(
                    child: Text(
                      'Shop More',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
