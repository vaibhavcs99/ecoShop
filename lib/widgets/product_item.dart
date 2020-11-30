import 'package:flutter/material.dart';
import '../screens/item_details.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../models/cart.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(ItemDetails.path, arguments: product.id);
                  },
                  child: Column(
                    children: [
                      Image.network(
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\₹${product.price}",
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Divider(
                  height: 0,
                ),
                Consumer<Product>(
                  builder: (context, value, child) => IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.favorite),
                          color: product.favorite ? Colors.red : Colors.grey,
                          onPressed: () {
                            product.toggleFavorite();
                          },
                        ),
                        VerticalDivider(
                          width: 1,
                        ),
                        IconButton(
                            icon: Icon(Icons.add_shopping_cart_sharp),
                            color: Colors.grey,
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Added to Cart",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  fontSize: 16.0);
                              cart.addItem(product.id, product.price,
                                  product.title, product.imageUrl);
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
