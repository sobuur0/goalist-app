import 'package:flutter/material.dart';

class wishlistCard extends StatelessWidget {
  const wishlistCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(''),
          Row(
            children: <Widget>[
              Text('w'),
              Icon(Icons.add),
              Icon(Icons.add),
            ],
          ),
        ],
      ),
    );
  }
}
