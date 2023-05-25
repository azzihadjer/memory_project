import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDisplay extends StatelessWidget {
  final DateTime dateTime;

  DateTimeDisplay({required this.dateTime});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
    String formattedTime = DateFormat('HH:mm:ss').format(dateTime);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Date: $formattedDate',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 16),
        Text(
          'Time: $formattedTime',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
