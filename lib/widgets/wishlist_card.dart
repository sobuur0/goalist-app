import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';

class WishlistCard extends StatelessWidget {
  final String goal;
  final int duration;

  const WishlistCard({
    Key? key,
    required this.goal,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: kWishlistCardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'images/smoke.jpg',
            scale: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 8.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '$goal\n',
                        style: kGoalTextStyle,
                      ),
                      TextSpan(
                        text: 'in $duration years',
                        style: kDurationTextStyle,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.share,
                  color: kTextsColor,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                const Icon(
                  Icons.check_circle,
                  color: kUnselectedItemColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
