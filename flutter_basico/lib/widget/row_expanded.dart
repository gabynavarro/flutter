import 'package:flutter/material.dart';

class row_expanded extends StatelessWidget {
  const row_expanded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Icon(
            Icons.access_alarm_outlined,
            size: 75.0,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.access_alarm_outlined,
            color: Colors.amber,
            size: 75.0,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.access_alarm_outlined,
            color: Colors.red,
            size: 75.0,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.access_alarm_outlined,
            color: Colors.blue,
            size: 75.0,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.access_alarm_outlined,
            color: Colors.pink,
            size: 75.0,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.access_alarm_outlined,
            color: Color.fromARGB(255, 141, 140, 140),
            size: 75.0,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.access_alarm_outlined,
            color: Color.fromARGB(255, 59, 104, 79),
            size: 75.0,
          ),
        ),
      ],
    );
  }
}
