import 'package:flutter/material.dart';

class predection extends StatelessWidget {
  static String predectionid = 'predection';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Age',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Fam histo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'chronic Htn',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'BMI',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Sys BP',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Dia BP',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Hb',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Hematocrit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'MCH',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'MCHC',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'MCV',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Platelet',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'HDL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'OGTT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Blood Sugar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Body temperature',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Heart Rate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Container(
                        color: Colors.grey[400],
                        height: 10,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          //maxLength: 2,
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'Predict',
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xffE57A7A),
              )
            ],
          ),
        ),
      ),
    );
  }
}
