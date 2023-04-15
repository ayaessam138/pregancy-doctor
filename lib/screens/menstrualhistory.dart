import 'package:flutter/material.dart';

import '../constants.dart';
import '../weidgetes/custom_text_field.dart';

class menstrualhistory extends StatelessWidget {
  menstrualhistory(
      {required this.DurationofMenses,
      required this.IntervalofCycle,
      required this.AgeOfMenrache});
  String? DurationofMenses, IntervalofCycle, AgeOfMenrache;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            }
          },
          fieldtype: TextInputType.number,
          labeltext: 'Age Of Menrache',
          hinttext: 'Age Of Menrache',
          onchanged: (dynamic AgeOfMenrachevalue) {
            AgeOfMenrache = AgeOfMenrachevalue;
          },
        ),
        SizedBox(
          height: 15,
        ),
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            }
          },
          fieldtype: TextInputType.number,
          labeltext: 'Duration of Menses',
          hinttext: 'Duration of Menses',
          onchanged: (dynamic DurationofMensesvalue) {
            DurationofMenses = DurationofMensesvalue;
          },
        ),
        SizedBox(
          height: 15,
        ),
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            }
          },
          fieldtype: TextInputType.number,
          labeltext: 'Interval of Cycle',
          hinttext: 'Interval of Cycles',
          onchanged: (dynamic IntervalofCyclevalue) {
            IntervalofCycle = IntervalofCyclevalue;
          },
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
