import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';

class GoalSteps extends StatefulWidget {
  final String step;

  const GoalSteps({
    required this.step,
    Key? key,
  }) : super(key: key);

  @override
  _GoalStepsState createState() => _GoalStepsState();
}

class _GoalStepsState extends State<GoalSteps> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _value,
          onChanged: (newValue) {
            setState(() => _value = newValue!);
          },
        ),
        Text(
          widget.step,
          style: kDurationTextStyle,
        ),
      ],
    );
  }
}
