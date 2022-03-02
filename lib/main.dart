import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';
import 'package:goalist_app/wishlist_page.dart';

void main() {
  runApp(const GoalistApp());
}

class GoalistApp extends StatelessWidget {
  const GoalistApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        appBarTheme: const AppBarTheme(
          color: kAppBarColor,
        ),
      ),
      home: const WishlistPage(),
    );
  }
}
