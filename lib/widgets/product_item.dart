import 'package:flutter/material.dart';

class Productitem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  Productitem(this.id, this.title, this.imageUrl, this.price);
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Text(
                  "\₹$price",
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(icon: Icon(Icons.favorite), onPressed: null),
                    IconButton(
                        icon: Icon(Icons.add_shopping_cart_sharp),
                        onPressed: null)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
