import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';
import 'package:goalist_app/widgets/accomplished_goals_card.dart';

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
            children: const <Widget>[
              Text(
                'Recent',
                style: kGoalTextStyle,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: AccomplishedGoalsCard(
                  goalTrophy: Icons.emoji_events,
                  accomplishedGoal: 'Plunk for 1 week',
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Last Month',
                style: kGoalTextStyle,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: AccomplishedGoalsCard(
                  goalTrophy: Icons.military_tech,
                  accomplishedGoal: 'Visiting 3 cities',
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: AccomplishedGoalsCard(
                  accomplishedGoal: 'Helping 2 people',
                  goalTrophy: Icons.emoji_events,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
