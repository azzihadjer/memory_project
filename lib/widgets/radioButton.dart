import 'package:flutter/material.dart';

class LoginRadioButton extends StatefulWidget {
  @override
  _LoginRadioButtonState createState() => _LoginRadioButtonState();
}

class _LoginRadioButtonState extends State<LoginRadioButton> {
  String loginType = 'Craftsmaner';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Job Type: ",
            style: TextStyle(
              fontFamily: 'SF Pro Display ProR',
              fontSize: 19,
              color: Color(0xFF7DBD72),
              fontWeight: FontWeight.bold,
            ),
          ),
          Radio(
            value: 'Craftsman',
            groupValue: loginType,
            onChanged: (value) {
              setState(() {
                loginType = value!;
              });
            },
            activeColor: Color.fromARGB(255, 244, 186, 12),
          ),
          Text(
            'Craftsman',
            style: TextStyle(color: Color(0xFF7DBD72), fontSize: 15),
          ),
          SizedBox(width: 2.0),
          Radio(
            value: 'Patron',
            groupValue: loginType,
            onChanged: (value) {
              setState(() {
                loginType = value!;
              });
            },
            activeColor: Color.fromARGB(255, 244, 186, 12),
          ),
          Text(
            'Patron',
            style: TextStyle(color: Color(0xFF7DBD72), fontSize: 15),
          ),
        ],
      ),
    );
  }
}
