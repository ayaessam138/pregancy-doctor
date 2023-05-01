import 'package:flutter/material.dart';

class patients extends StatefulWidget {
  static String patientsid = 'patient';
  const patients({Key? key}) : super(key: key);

  @override
  State<patients> createState() => _patientsState();
}

class _patientsState extends State<patients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Patients'),
        backgroundColor: Color(0xFFE57A7A),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(70),
        child: FloatingActionButton(
          backgroundColor: Color(0xFFE57A7A),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Add Patient'),
                    content: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: 'Patient Name'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: 'Patient ID'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: MaterialButton(
                                elevation: 5.0,
                                color: Color(0xFFE57A7A),
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 80),
                                child: Text(
                                  'add',
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
                });
          },
        ),
      ),
    );
  }
}
