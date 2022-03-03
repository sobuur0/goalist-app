import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';
import 'package:goalist_app/pages/add_page.dart';
import 'package:goalist_app/pages/completed_page.dart';
import 'package:goalist_app/pages/wishlist_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _pagesOptions = <Widget>[
    const WishlistPage(),
    const AddPage(),
    const CompletedPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Wishlist',
          style: kHeaderTextStyle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: _pagesOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        selectedFontSize: 20.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_outline),
            label: 'Completed',
          ),
        ],
      ),
    );
  }
}
