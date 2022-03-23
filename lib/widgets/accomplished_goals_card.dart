import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';

class AccomplishedGoalsCard extends StatelessWidget {
  final String accomplishedGoal;
  final IconData goalTrophy;

  const AccomplishedGoalsCard({
    required this.accomplishedGoal,
    required this.goalTrophy,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              accomplishedGoal,
              style: kDurationTextStyle.copyWith(fontSize: 18.0),
            ),
            const Text(
              'YOU did it 🥰😋',
              style: kDurationTextStyle,
            ),
          ],
        ),
         Icon(
          goalTrophy,
          size: 60.0,
          color: const Color(0xFFFFD782),
        ),
      ],
    );
  }
}
