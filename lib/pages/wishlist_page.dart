import 'package:flutter/material.dart';
import 'package:goalist_app/widgets/wishlist_card.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: const <Widget>[
          WishlistCard(
            goal: 'Become a Product designer',
            duration: 3,
          ),
        ],
      ),
    );
  }
}
