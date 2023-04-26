import 'package:flutter/widgets.dart';

import '../constants.dart';
import '../weidgetes/custom_text_field.dart';

class personalinfo extends StatelessWidget {
  TextEditingController name;
  TextEditingController Age;
  TextEditingController Ageatmarriage;
  TextEditingController adress;
  TextEditingController husbandage;
  TextEditingController LevelOfEducation,
      Ocuppation,
      Habit,
      HusbandHabit,
      HusbandOcuppation;

  personalinfo(
      {required this.name,
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
          controller: name,
          // onchanged: (namevalue) {
          //   name = namevalue;
          // },
        ),
        SizedBox(
          height: 15,
        ),
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            } else if (int.parse(Age.text) < 40 || int.parse(Age.text) > 60) {
              return 'please enter age between 40 and 60';
            }
            return null;
          },
          fieldtype: TextInputType.number,
          labeltext: 'Age',
          hinttext: 'Age',
          controller: Age,
          // onchanged: (dynamic Agevalue) {
          //   Age = Agevalue;
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
          labeltext: 'Age at Marriage',
          hinttext: 'Age at Marriage',
          controller: Ageatmarriage,
          // onchanged: (dynamic Ageatmarriagevalue) {
          //   Ageatmarriage = Ageatmarriagevalue;
          // }
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
          labeltext: 'Adress',
          hinttext: 'Adress',
          controller: adress,
          // onchanged: (dynamic Adressvalue) {
          //   adress = Adressvalue;
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
          labeltext: 'Level Of Education',
          hinttext: 'Level Of Education',
          controller: LevelOfEducation,
          // onchanged: (LevelOfEducationvalue) {
          //   LevelOfEducation = LevelOfEducationvalue;
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
          labeltext: 'Ocuppation',
          hinttext: 'Ocuppation',
          controller: Ocuppation,
          // onchanged: (Ocuppationvalue) {
          //   Ocuppation = Ocuppationvalue;
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
          labeltext: 'Habit',
          hinttext: 'Habit',
          controller: Habit,
          // onchanged: (Habitvalue) {
          //   Habit = Habitvalue;
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
          labeltext: 'Husband Age',
          hinttext: 'Husband Age',
          controller: husbandage,
          // onchanged: (dynamic husbandagevalue) {
          //   husbandage = husbandagevalue;
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
          labeltext: 'Husband Habit',
          hinttext: 'Husband Habit',
          controller: HusbandHabit,
          // onchanged: (dynamic HusbandHabitvalue) {
          //   HusbandHabit = HusbandHabitvalue;
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
          labeltext: 'Husband Ocuppation',
          hinttext: 'Husband Ocuppation',
          controller: HusbandOcuppation,
          // onchanged: (dynamic HusbandOcuppationvalue) {
          //   HusbandOcuppation = HusbandOcuppationvalue;
          // },
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
