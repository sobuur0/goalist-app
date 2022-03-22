import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';

class CongratulationsPage extends StatefulWidget {
  const CongratulationsPage({Key? key}) : super(key: key);

  @override
  _CongratulationsPageState createState() => _CongratulationsPageState();
}

class _CongratulationsPageState extends State<CongratulationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              'images/car.jpg',
              height: 400.0,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0, bottom: 15.0,),
            child: Text(
              'Congratulations!',
              style: kHeaderTextStyle,
            ),
          ),
          const Text(
            'YOU\nhave accomplished your set goal',
            textAlign: TextAlign.center,
            style: kGoalTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0,),
            child: Text(
              'Choose your trophy!',
              style: kGoalTextStyle.copyWith(fontSize: 14.0),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.emoji_events,
                size: 40.0,
                color: Color(0xFFFFD782),
              ),
              Icon(
                Icons.military_tech,
                size: 40.0,
                color: Color(0xFFEBBC00),
              ),
              Icon(
                Icons.military_tech,
                size: 40.0,
                color: Color(0xFFFFD782),
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.military_tech,
                size: 40.0,
                color: Color(0xFFF7B238),
              ),
              Icon(
                Icons.emoji_events,
                size: 40.0,
                color: Color(0xFFFFD782),
              ),
              Icon(
                Icons.military_tech,
                size: 40.0,
                color: Color(0xFFFFD782),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
