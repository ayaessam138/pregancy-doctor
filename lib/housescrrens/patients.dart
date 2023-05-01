import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pregancydoctor/constants.dart';
import 'package:pregancydoctor/cubit/addpatient_cubit/addpatient_cubit.dart';
import 'package:pregancydoctor/housescrrens/patientrecord.dart';
import 'package:pregancydoctor/models/addpatient.dart';

import '../weidgetes/patientdata.dart';

class patients extends StatefulWidget {
  static String patientsid = 'patient';
  patients({Key? key}) : super(key: key);

  @override
  State<patients> createState() => _patientsState();
}

class _patientsState extends State<patients> {
  List<addpatient> patientlist = [];

  TextEditingController patientname = TextEditingController();
  TextEditingController patientid = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Patients'),
        backgroundColor: kprimarycolor,
      ),
      body: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, patientrecord.patientrecordid);
          },
          child: Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Patient ID',
                  style: TextStyle(color: kprimarycolor),
                ),
                Text(
                  'Patient Name',
                  style: TextStyle(color: kprimarycolor),
                ),
                Text(
                  'Delete',
                  style: TextStyle(color: kprimarycolor),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: kprimarycolor,
                    ))
              ],
            ),
          ),
        ),
        BlocBuilder<AddpatientCubit, AddpatientState>(
            builder: (context, state) {
          if (state is Addpatientsucess) {
            return Expanded(
              child: ListView.builder(
                  itemCount: state.addpatients!.length,
                  itemBuilder: (context, index) {
                    return patientdata(
                      patientid: state.addpatients![index].patientid!,
                      patientname: state.addpatients![index].patientname!,
                    );
                  }),
            );
          } else {
            return CircularProgressIndicator();
          }
        })
      ]),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(70),
        child: FloatingActionButton(
          backgroundColor: kprimarycolor,
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
                            controller: patientname,
                            decoration:
                                InputDecoration(hintText: 'Patient Name'),
                          ),
                          TextFormField(
                            controller: patientid,
                            decoration: InputDecoration(hintText: 'Patient ID'),
                          ),
                          TextButton(
                            onPressed: () {
                              if (patientname.text.isEmpty &&
                                  patientid.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Please Patientname And Patientid'),
                                    duration: Duration(seconds: 3),
                                  ),
                                );
                                //Navigator.pop(context);
                                return;
                              } else {
                                setState(() {
                                  BlocProvider.of<AddpatientCubit>(context)
                                      .addpatients(
                                          patientname: patientname.text,
                                          patientid: patientid.text);
                                });

                                patientname.clear();
                                patientid.clear();

                                Navigator.pop(context);
                                return;
                              }
                            },
                            child: const Text(
                              'Add',
                              style: TextStyle(color: kprimarycolor),
                            ),
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
