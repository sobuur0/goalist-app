import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';
import 'package:goalist_app/widgets/goalSteps.dart';

class WishlistStepsCard extends StatelessWidget {
  const WishlistStepsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Container(
        height: size.height * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: kWishlistCardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //TODO: Change these to RichText
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                top: 12.0,
              ),
              child: Text(
                'Product Designer',
                style: kHeaderTextStyle.copyWith(
                  fontSize: 25.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'in 3 years',
                style: kDurationTextStyle,
              ),
            ),
            const SizedBox(height: 10.0,),
            const Divider(
              indent: 30.0,
              endIndent: 30.0,
              thickness: 3.0,
              color: kTextsColor,
            ),
            const SizedBox(height: 10.0,),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Steps to reach my goal:',
                style: kGoalTextStyle,
              ),
            ),
            const SizedBox(height: 5.0,),
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
            const Spacer(),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
              child: Image.asset(
                'images/car.jpg',
                height: 150.0,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
