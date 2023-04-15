import 'package:flutter/material.dart';

import '../weidgetes/custom_text_field.dart';

class physicaleximination extends StatelessWidget {
  physicaleximination(
      {required this.Height,
      required this.Weight,
      required this.PrePregancyBodyMassIndex,
      required this.BloodPressure,
      required this.Pluse});
  String? Height, Weight, PrePregancyBodyMassIndex, BloodPressure, Pluse;
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
          labeltext: 'Weight',
          hinttext: 'Weight',
          onchanged: (dynamic Weightvalue) {
            Weight = Weightvalue;
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
          labeltext: 'Pre-Pregancy Body Mass Index',
          hinttext: 'Pre-Pregancy Body Mass Index',
          onchanged: (dynamic PrePregancyBodyMassIndexvalue) {
            PrePregancyBodyMassIndex = PrePregancyBodyMassIndexvalue;
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
          labeltext: 'Blood Pressure',
          hinttext: 'Blood Pressure',
          onchanged: (dynamic BloodPressurevalue) {
            BloodPressure = BloodPressurevalue;
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
          labeltext: 'Pluse',
          hinttext: 'Pluse',
          onchanged: (dynamic Plusevalue) {
            Pluse = Plusevalue;
          },
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
