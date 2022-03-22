import 'package:flutter/material.dart';
import 'package:goalist_app/widgets/wishlist_steps_card.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: WishlistStepsCard(),
      ),
    );
  }
}
