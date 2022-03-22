import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';
import 'package:goalist_app/pages/congratulations_page.dart';

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
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kWishlistCardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            child: Image.asset(
              'images/clock.jpg',
              fit: BoxFit.fill,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
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
                  size: 30.0,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CongratulationsPage(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.check_circle,
                    color: kUnselectedItemColor,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
