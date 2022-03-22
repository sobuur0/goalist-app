import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';
import 'package:goalist_app/widgets/goalSteps.dart';

class WishlistStepsCard extends StatelessWidget {
  const WishlistStepsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: kWishlistCardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //TODO: Change these to RichText
            Text(
              'Product Designer',
              style: kHeaderTextStyle.copyWith(
                fontSize: 25.0,
              ),
            ),
            const Text(
              'in 3 years',
              style: kDurationTextStyle,
            ),
            const Divider(
              indent: 20.0,
              endIndent: 20.0,
              thickness: 3.0,
              color: kTextsColor,
            ),
            const Text(
              'Steps to reach my goal:',
              style: kDurationTextStyle,
            ),
            const GoalSteps(
              step: 'Make 3 cases for my portfolio',
            ),
            const GoalSteps(
              step: 'Connect with 50 design people',
            ),
            const GoalSteps(
              step: 'Apply to 5 companies',
            ),
            const GoalSteps(
              step: 'Learn more about figma',
            ),
            Spacer(),
            Image.asset(
              'images/car.jpg',
              height: 100.0,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
