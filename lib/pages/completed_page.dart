import 'package:flutter/material.dart';
import 'package:goalist_app/constants.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({Key? key}) : super(key: key);

  @override
  _CompletedPageState createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
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
                          'YOU did it',
                          style: kDurationTextStyle,
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.woman,
                      size: 60.0,
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
                          'YOU did it',
                          style: kDurationTextStyle,
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.woman,
                      size: 60.0,
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
                          'YOU did it',
                          style: kDurationTextStyle,
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.woman,
                      size: 60.0,
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
