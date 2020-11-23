import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../widgets/horizontal_listview.dart';

import '../widgets/cart_icon.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousal = Container(
        height: 180.0,
        width: MediaQuery.of(context).size.width,
        child: Carousel(
          showIndicator: false,
          dotSize: 4,
          images: [
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          ],
        ));
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        title: Text(
          "Shopping App",
          style: TextStyle(fontFamily: 'pacifico', color: Colors.black),
        ),
        elevation: 0.5,
        actions: [CartIcon()],
      ),
      body: ListView(
        children: <Widget>[
          imageCarousal,
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Popular Deals",
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Horizontallist(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recently Added",
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
