import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final double price;
  final int quantity;
  final String imageUrl;

  CartItem({this.id, this.title, this.price, this.quantity, this.imageUrl});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(String prodId, double price, String title, String imageUrl) {
    if (_items.containsKey(prodId)) {
      _items.update(
          prodId,
          (value) => CartItem(
              id: value.id,
              price: value.price,
              title: value.title,
              imageUrl: value.imageUrl,
              quantity: value.quantity + 1));
    } else {
      _items.putIfAbsent(
          prodId,
          () => CartItem(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              quantity: 1,
              imageUrl: imageUrl));
    }
    print('object added');
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
