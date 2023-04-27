import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


//import '../weidgetes/alert.dart';

class sign extends StatefulWidget {
  const sign({Key? key}) : super(key: key);
  static String signupid = 'signup';
  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  var myusername, mypassword, myemail,myage;

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  signupp()async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();

      try {
        //showLoading(context);
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: myemail.toString().trim(), password: mypassword.toString().trim());
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Navigator.of(context).pop();
          AwesomeDialog(
              context: context,
              title: "Error",
              body: Text("Password is to weak"))
            ..show();
        } else if (e.code == 'email-already-in-use') {
          Navigator.of(context).pop();
          AwesomeDialog(
              context: context,
              title: "Error",
              body: Text("The account already exists for that email"))
            ..show();
        }
        else if (e.code == 'email-already-in-use') {
          Navigator.of(context).pop();
          AwesomeDialog(
              context: context,
              title: "Error",
              body: Text("The account already exists for that email"))
            ..show();
        }
      } catch (e) {
        print(e);
      }
    } else {}


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE57A7A),
        title: Text('sign up'),
      ),

      body: ListView(

        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/images/login.jpeg'),
              ),
            ),
          ),
          Center(
            child: Text(
              'Pregnancy App',
              style: TextStyle(fontSize: 32, fontFamily: 'Lemon',color: Color(0xFFE57A7A)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child:Form(
              key: formstate,
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (val) {
                      myusername = val;
                    },



                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person,color: Color(0xFFE57A7A),),
                      hintText: "user name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.pinkAccent
                        ),

                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),

                    ),
                    validator: (val) {
                      if (val!.length > 100) {
                        return "username can't to be larger than 100 letter";
                      }
                      if (val.length < 2) {
                        return "username can't to be less than 2 letter";
                      }
                      return null;
                    },

                  ),
                  TextFormField(
                    onSaved: (val) {
                      myage = val;
                    },




                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person,color: Color(0xFFE57A7A),),
                      hintText: " age",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.pinkAccent
                        ),

                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),

                    ),
                    validator: (val) {
                      if (val!.length > 100) {
                        return "username can't to be larger than 100 letter";
                      }
                      if (val.length < 2) {
                        return "username can't to be less than 2 letter";
                      }
                      return null;
                    },

                  ),
                  TextFormField(
                    onSaved: (val) {
                      myemail = val;
                    },




                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Color(0xFFE57A7A),),
                      hintText: " email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.pinkAccent
                        ),

                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),

                    ),
                    validator: (val) {
                      if (val!.length > 100) {
                        return "username can't to be larger than 100 letter";
                      }
                      if (val.length < 2) {
                        return "username can't to be less than 2 letter";
                      }
                      return null;
                    },

                  ),
                  TextFormField(
                    onSaved: (val) {
                      mypassword = val;
                    },



                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password,color: Color(0xFFE57A7A),),
                      hintText: "password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.pinkAccent
                        ),

                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),

                    ),
                    validator: (val) {
                      if (val!.length > 100) {
                        return "username can't to be larger than 100 letter";
                      }
                      if (val.length < 2) {
                        return "username can't to be less than 2 letter";
                      }
                      return null;
                    },
                    obscureText: true,

                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text("if you have Account ",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("log");
                            },
                            child: Text(
                              "Click Here",
                              style: TextStyle(color: Colors.blue),
                            ),
                          )
                        ],
                      )),
                  Container(
                      child: MaterialButton(
                        elevation: 5.0,
                        color: Color(0xFFE57A7A),
                        textColor: Colors.white,
                        onPressed: () async {

                          UserCredential response = await signupp();
                          print("===================");
                          if (response != null) {
                            await FirebaseFirestore.instance
                                .collection("users").doc(response.user?.uid)
                                .set({"username": myusername, "email": myemail,"age":myage});
                            Navigator.of(context)
                                .pushReplacementNamed("home");

                          } else {
                            print("Sign Up Faild");
                          }

                          print("===================");
                        },
                        child: Text(
                          "Sign Up",

                          style:// TextStyle(fontWeight: FontWeight.bold),
                          Theme.of(context).textTheme.titleMedium,



                        ),
                      ))





                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
