import 'package:flutter/material.dart';
import 'package:projet1/pages/login_page.dart';
import 'package:projet1/widgets/radioButton.dart';

class SignUpPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 3 / 4;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  double getBigbigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 10 / 11;
  String gender = 'male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EBD2),
      body: Stack(
        children: [
          Positioned(
              right: -getBigDiameter(context) / 12,
              top: -getBigDiameter(context) / 15,
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 72, 233, 43),
                      Color.fromARGB(255, 233, 216, 169),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              )),
          Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                width: getBigDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFFF1B602), Color(0xFF7DBD72)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
              )),
          Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                width: getBigDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFFF1B602), Color(0xFF7DBD72)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
              )),
          Positioned(
              left: -getBigDiameter(context) / 4,
              top: -getBigDiameter(context) / 4,
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF637454), Color(0xFFFACE4D)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 45.0,
                      ),
                      Text(
                        "Join Us",
                        style: TextStyle(
                          fontFamily: 'SF Pro Display ProR',
                          fontSize: 35,
                          color: Color(0xFFF4EBD2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      /*  Text(
                        "Back !",
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 30,
                          color: Color(0xFFF4EBD2),
                          fontWeight: FontWeight.w800,
                        ),
                      ),*/
                    ],
                  ),
                ),
              )),
          Positioned(
              left: -getSmallDiameter(context) / 2.5,
              bottom: -getSmallDiameter(context) / 2,
              child: Container(
                width: getBigDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 233, 216, 169),
                        Color.fromARGB(255, 72, 233, 43),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 130, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      icon: Icon(
                        Icons.person,
                        color: Color(0xFF7DBD72),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 236, 230, 215),
                        ),
                      ),
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Color(0xFF7DBD72),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      icon: Icon(
                        Icons.email,
                        color: Color(0xFF7DBD72),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 236, 230, 215),
                        ),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Color(0xFF7DBD72),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      icon: Icon(
                        Icons.numbers,
                        color: Color(0xFF7DBD72),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 236, 230, 215),
                        ),
                      ),
                      labelText: " Phone N°",
                      labelStyle: TextStyle(
                        color: Color(0xFF7DBD72),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      icon: Icon(
                        Icons.home,
                        color: Color(0xFF7DBD72),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 236, 230, 215),
                        ),
                      ),
                      labelText: "Wilaya",
                      labelStyle: TextStyle(
                        color: Color(0xFF7DBD72),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color(0xFF7DBD72),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 236, 230, 215),
                        ),
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Color(0xFF7DBD72),
                      ),
                    ),
                  ),
                ),
                Container(child: LoginRadioButton()),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 147, 201, 138),
                        Color.fromARGB(255, 227, 222, 85)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Color(0xFF7DBD72),
                      child: Center(
                        child: Text(
                          'CREATE AN ACCOUNT',
                          style: TextStyle(
                            color: Color.fromARGB(255, 236, 230, 215),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ALREADY HAVE AN ACCOUNT?",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 241, 187, 26),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
