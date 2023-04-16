import 'package:flutter/material.dart';
// import 'package:login/screens/signUp.dart';
// //import 'package:login/screens/signup.dart';
// import 'package:login/widgets/container.dart';
// import 'package:login/widgets/navigationBar.dart';
import 'package:pregancydoctor/screens/signUp.dart';

import '../weidgetes/textField.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
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
            //Text('LOGIN',
            //style: TextStyle(fontSize: 24),

            //),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: textFeild(
                hintText: 'Email',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: textFeild(
                hintText: 'Password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
              child: MaterialButton(
                  elevation: 5.0,
                  color: Color(0xFFEFEFEF),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Color(0xFFE57A7A), fontWeight: FontWeight.bold),
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {}),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return signUp();
                }));
              },
              child: Text(
                'Creat account',
                style: TextStyle(
                    color: Color(0xFFC13434), fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
