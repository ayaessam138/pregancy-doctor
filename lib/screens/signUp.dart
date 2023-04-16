import 'package:flutter/material.dart';

import '../weidgetes/textField.dart';

class signUp extends StatefulWidget {
  signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/images/login.jpeg'),
              ),
            ),
            Text(
              'Pregnancy App',
              style: TextStyle(fontSize: 32, fontFamily: 'Lemon'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: textFeild(
                hintText: 'First Name',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: textFeild(
                hintText: 'Second Name',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: textFeild(
                hintText: 'E-Mail',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: textFeild(
                hintText: 'Password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: textFeild(
                hintText: 'Re-Enter Password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Visibility(
                  visible: isVisable,
                  child: textFeild(
                    hintText: 'Last Period',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: MaterialButton(
                        elevation: 5.0,
                        color: Color(0xFFE57A7A),
                        onPressed: () {},
                        child: Text(
                          'Doctor',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: MaterialButton(
                        elevation: 5.0,
                        color: Color(0xFFE57A7A),
                        onPressed: () {},
                        child: Text(
                          'Nurse',
                          style: TextStyle(
                              backgroundColor: Color(0xFFE57A7A),
                              color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: MaterialButton(
                        color: Color(0xFFE57A7A),
                        elevation: 5.0,
                        onPressed: () {
                          setState(() {
                            isVisable = !isVisable;
                          });
                        },
                        child: Text(
                          'Patient',
                          style: TextStyle(
                              backgroundColor: Color(0xFFE57A7A),
                              color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
              child: MaterialButton(
                  elevation: 5.0,
                  color: Color(0xFFE57A7A),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                  child: Text(
                    'Sign UP',
                    style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lemon'),
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
