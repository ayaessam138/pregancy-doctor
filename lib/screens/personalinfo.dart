import 'package:flutter/widgets.dart';

import '../constants.dart';
import '../weidgetes/custom_text_field.dart';

class personalinfo extends StatelessWidget {
  String? name;
  String? Age;
  String? Ageatmarriage;
  String? adress;
  String? husbandage;
  String? LevelOfEducation, Ocuppation, Habit, HusbandHabit, HusbandOcuppation;

  personalinfo(
      {super.key,
      required this.name,
      required this.Age,
      required this.Ageatmarriage,
      required this.adress,
      required this.husbandage,
      required this.LevelOfEducation,
      required this.Ocuppation,
      required this.Habit,
      required this.HusbandHabit,
      required this.HusbandOcuppation});
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
          labeltext: 'Name',
          hinttext: 'Name',
          onchanged: (namevalue) {
            name = namevalue;
          },
        ),
        SizedBox(
          height: 15,
        ),
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            } else if (int.parse(Age!) == 40) {
              return 'enter age';
            }
          },
          fieldtype: TextInputType.number,
          labeltext: 'Age',
          hinttext: 'Age',
          onchanged: (dynamic Agevalue) {
            Age = Agevalue;
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
            labeltext: 'Age at Marriage',
            hinttext: 'Age at Marriage',
            onchanged: (dynamic Ageatmarriagevalue) {
              Ageatmarriage = Ageatmarriagevalue;
            }),
        SizedBox(
          height: 15,
        ),
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            }
          },
          labeltext: 'Adress',
          hinttext: 'Adress',
          onchanged: (dynamic Adressvalue) {
            adress = Adressvalue;
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
          labeltext: 'Level Of Education',
          hinttext: 'Level Of Education',
          onchanged: (LevelOfEducationvalue) {
            LevelOfEducation = LevelOfEducationvalue;
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
          labeltext: 'Ocuppation',
          hinttext: 'Ocuppation',
          onchanged: (Ocuppationvalue) {
            Ocuppation = Ocuppationvalue;
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
          labeltext: 'Habit',
          hinttext: 'Habit',
          onchanged: (Habitvalue) {
            Habit = Habitvalue;
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
          labeltext: 'Husband Age',
          hinttext: 'Husband Age',
          onchanged: (dynamic husbandagevalue) {
            husbandage = husbandagevalue;
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
          labeltext: 'Husband Habit',
          hinttext: 'Husband Habit',
          onchanged: (dynamic HusbandHabitvalue) {
            HusbandHabit = HusbandHabitvalue;
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
          labeltext: 'Husband Ocuppation',
          hinttext: 'Husband Ocuppation',
          onchanged: (dynamic HusbandOcuppationvalue) {
            HusbandOcuppation = HusbandOcuppationvalue;
          },
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
