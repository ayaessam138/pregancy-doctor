import 'package:flutter/material.dart';

import '../weidgetes/custom_text_field.dart';

class investigations extends StatelessWidget {
  investigations(
      {required this.BloodGroup,
      required this.Ketone,
      required this.RhFactor,
      required this.Sugar,
      required this.TORCH,
      required this.uss});
  TextEditingController BloodGroup, RhFactor, TORCH, Sugar, Ketone, uss;
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
          labeltext: 'Blood Group',
          hinttext: 'Blood Group',
          controller: BloodGroup,
          // onchanged: (BloodGroupvalue) {
          //   BloodGroup = BloodGroupvalue;
          // },
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
          labeltext: 'Rh Factor',
          hinttext: 'Rh Factor',
          controller: RhFactor,
          // onchanged: (RhFactorvalue) {
          //   RhFactor = RhFactorvalue;
          // },
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
          labeltext: 'TORCH',
          hinttext: 'TORCH',
          controller: TORCH,
          // onchanged: (dynamic TORCHvalue) {
          //   TORCH = TORCHvalue;
          // },
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
          labeltext: 'Sugar',
          hinttext: 'Sugar',
          controller: Sugar,
          // onchanged: (dynamic Sugarvalue) {
          //   Sugar = Sugarvalue;
          // },
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
          labeltext: 'Ketone',
          hinttext: 'Ketone',
          controller: Ketone,
          // onchanged: (dynamic Ketonevalue) {
          //   Ketone = Ketonevalue;
          // },
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
          labeltext: 'U.S.S',
          hinttext: 'U.S.S',
          controller: uss,
          // onchanged: (dynamic ussvalue) {
          //   uss = ussvalue;
          // },
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
