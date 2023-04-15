import 'package:flutter/material.dart';
import 'package:pregancydoctor/housescrrens/appointments.dart';
import 'package:pregancydoctor/housescrrens/patients.dart';
import 'package:pregancydoctor/housescrrens/selectnurses.dart';

import '../house_weidghets/custtom_card.dart';

import '../housescrrens/notes.dart';

class house extends StatelessWidget {
  static String houseid = 'house';

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              custtomcard(
                cardimage: 'assets/images/patients.jpeg',
                text: 'Patients',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    patients.patientsid,
                  );
                },
              ),
              custtomcard(
                cardimage: 'assets/images/notes.jpeg',
                text: 'Notes',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    notes.notesid,
                  );
                },
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              custtomcard(
                cardimage: 'assets/images/appointments.jpeg',
                text: 'Appointments',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    appointments.appointmentssid,
                  );
                },
              ),
              custtomcard(
                cardimage: 'assets/images/appointments.jpeg',
                text: 'Analysis',
                onTap: () {
                  Navigator.pushNamed(context, selectnurses.selectnursesid);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
