import 'package:ecoShop/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'favorites_screen.dart';
import 'category_screen.dart';
import 'home_screen.dart';
import 'cart_screen.dart';

class BottomTabs extends StatefulWidget {
  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  List<Widget> _pages = [
    Homescreen(),
    Categoryscreen(),
    Favoritescreen(),
    Cartscreen(),
    Profilescreen(),
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black.withOpacity(.80),
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Profile'),
        ],
      ),
    );
  }
}
