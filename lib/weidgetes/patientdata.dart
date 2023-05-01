import 'package:flutter/material.dart';
import 'package:pregancydoctor/models/addpatient.dart';

import '../constants.dart';

class patientdata extends StatelessWidget {
  patientdata({required this.patientid, required this.patientname});
  final String patientname;
  final String patientid;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          patientid,
          style: TextStyle(color: kprimarycolor),
        ),
        Text(
          patientname,
          style: TextStyle(color: kprimarycolor),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: kprimarycolor,
            ))
      ],
    );
  }
}
