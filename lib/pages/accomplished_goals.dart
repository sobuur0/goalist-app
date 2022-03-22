import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';

class AccomplishedGoalsPage extends StatefulWidget {
  const AccomplishedGoalsPage({Key? key}) : super(key: key);

  @override
  _AccomplishedGoalsPageState createState() => _AccomplishedGoalsPageState();
}

class _AccomplishedGoalsPageState extends State<AccomplishedGoalsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(
            20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Recent',
                style: kGoalTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Plunk for 1 week',
                          style: kDurationTextStyle.copyWith(fontSize: 18.0),
                        ),
                        const Text(
                          'YOU did it 🥰😋',
                          style: kDurationTextStyle,
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.emoji_events,
                      size: 60.0,
                      color: Color(0xFFF7B238),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'Last Month',
                style: kGoalTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Visiting 3 cities',
                          style: kDurationTextStyle.copyWith(fontSize: 18.0),
                        ),
                        const Text(
                          'YOU did it 🥰😋',
                          style: kDurationTextStyle,
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.military_tech,
                      size: 60.0,
                      color: Color(0xFFFFD782),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Helping 2 people',
                          style: kDurationTextStyle.copyWith(fontSize: 18.0),
                        ),
                        const Text(
                          'YOU did it 🥰😋',
                          style: kDurationTextStyle,
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.emoji_events,
                      size: 60.0,
                      color: Color(0xFFEBBC00),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: get and change the icons to a trophy icon