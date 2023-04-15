import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pregancydoctor/cubit/pregancyform_cubit/pregancyform_cubit.dart';
import 'package:pregancydoctor/screens/investigation.dart';
import 'package:pregancydoctor/screens/obestrichistory.dart';
import 'package:pregancydoctor/screens/personalinfo.dart';
import 'package:pregancydoctor/screens/physicaleximination.dart';
import 'package:pregancydoctor/weidgetes/custombutton.dart';
import '../constants.dart';
import '../weidgetes/Dropdownbutton.dart';
import '../weidgetes/custom_text_field.dart';
import 'menstrualhistory.dart';

class pregancyform extends StatefulWidget {
  static String pregancyformid = 'pregancyform';

  @override
  State<pregancyform> createState() => _pregancyformState();
}

class _pregancyformState extends State<pregancyform> {
  List<String> dropDwonListValue = ['Normal', 'AbNormal'];
  // String dropDwonValue = 'Normal';

  bool HeadNeckvisbility = false;
  GlobalKey<FormState> formkey = GlobalKey();

//  form fields
  String? name;

  String? Age;

  String? Ageatmarriage;

  String? adress;

  String? husbandage;

  String? LevelOfEducation, Ocuppation, Habit, HusbandHabit, HusbandOcuppation;

  String? AgeofMenarche,
      DurationofMenses,
      IntervalofCycle,
      FallTermPregancy,
      Pretermpregancy,
      Abortion,
      LiveBabies;

  String? BloodGroup, RhFactor;

  String? TORCH,
      Sugar,
      Ketone,
      uss,
      Height,
      Weight,
      PrePregancyBodyMassIndex,
      BloodPressure,
      Pluse;

  String? dropDwonValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(12),
      child: Form(
        key: formkey,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Personal information',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kprimarycolor,
                    fontSize: 24),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            personalinfo(
              name: name,
              Age: Age,
              Ageatmarriage: Ageatmarriage,
              adress: adress,
              husbandage: husbandage,
              LevelOfEducation: LevelOfEducation,
              Ocuppation: Ocuppation,
              Habit: Habit,
              HusbandHabit: HusbandHabit,
              HusbandOcuppation: HusbandOcuppation,
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Menstrual history',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kprimarycolor,
                    fontSize: 24),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            menstrualhistory(
              DurationofMenses: DurationofMenses,
              IntervalofCycle: IntervalofCycle,
              AgeOfMenrache: AgeofMenarche,
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Obstetric history',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kprimarycolor,
                    fontSize: 24),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            obertichistory(
                FallTermPregancy: FallTermPregancy,
                Pretermpregancy: Pretermpregancy,
                Abortion: Abortion,
                LiveBabies: LiveBabies),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Investegations',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kprimarycolor,
                    fontSize: 24),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            investigations(
                BloodGroup: BloodGroup,
                Ketone: Ketone,
                RhFactor: RhFactor,
                Sugar: Sugar,
                TORCH: TORCH,
                uss: uss),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Pyshical Examination',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kprimarycolor,
                    fontSize: 24),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            physicaleximination(
                Height: Height,
                Weight: Weight,
                PrePregancyBodyMassIndex: PrePregancyBodyMassIndex,
                BloodPressure: BloodPressure,
                Pluse: Pluse),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField<String>(
              value: dropDwonValue,
              items: dropDwonListValue
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  dropDwonValue = value;
                  status = value!;
                  if (status == 'Normal') {
                    HeadNeckvisbility = false;
                  } else if (status == 'AbNormal') {
                    HeadNeckvisbility = true;
                  }
                  // print(HeadNeckvisbility);
                });
              },
            ),
            Visibility(
                visible: HeadNeckvisbility,
                child: customtextformfield(
                  valuevaldiation: (value) {
                    if (value!.isEmpty) {
                      return 'field required';
                    }
                  },
                  hinttext: 'Specifiy Abnormal',
                )),
            SizedBox(
              height: 15,
            ),
            Dropdownbuttonformfield(
              text: 'Teeth&Gums',
            ),
            SizedBox(
              height: 15,
            ),
            Dropdownbuttonformfield(
              text: 'Breasts&Nipples',
            ),
            SizedBox(
              height: 15,
            ),
            Dropdownbuttonformfield(
              text: 'Chest',
            ),
            SizedBox(
              height: 15,
            ),
            Dropdownbuttonformfield(
              text: 'Heart',
            ),
            SizedBox(
              height: 15,
            ),
            Dropdownbuttonformfield(
              text: 'Abdomen',
            ),
            SizedBox(
              height: 15,
            ),
            Dropdownbuttonformfield(
              text: 'Backbone',
            ),
            SizedBox(
              height: 15,
            ),
            Dropdownbuttonformfield(
              text: 'Varicosities&Extremities',
            ),
            SizedBox(
              height: 15,
            ),
            Dropdownbuttonformfield(
              text: 'Edema',
            ),
            custoumbutton(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    BlocProvider.of<PregancyformCubit>(context).submitform(
                        name: name,
                        Age: Age,
                        Ageatmarriage: Ageatmarriage,
                        adress: adress,
                        husbandage: husbandage,
                        LevelOfEducation: LevelOfEducation,
                        Ocuppation: Ocuppation,
                        Habit: Habit,
                        HusbandHabit: HusbandHabit,
                        HusbandOcuppation: HusbandOcuppation,
                        AgeofMenarche: AgeofMenarche,
                        DurationofMenses: DurationofMenses,
                        IntervalofCycle: IntervalofCycle,
                        FallTermPregancy: FallTermPregancy,
                        Pretermpregancy: Pretermpregancy,
                        Abortion: Abortion,
                        LiveBabies: LiveBabies,
                        BloodGroup: BloodGroup,
                        RhFactor: RhFactor,
                        TORCH: TORCH,
                        Sugar: Sugar,
                        Ketone: Ketone,
                        uss: uss,
                        Height: Height,
                        Weight: Weight,
                        PrePregancyBodyMassIndex: PrePregancyBodyMassIndex,
                        BloodPressure: BloodPressure,
                        Pluse: Pluse);
                  }
                },
                text: 'submit')
          ],
        ),
      ),
    )));
  }
}

// class specifyvisibilty extends StatefulWidget {
//   const specifyvisibilty({
//     super.key,
//   });

//   @override
//   State<specifyvisibilty> createState() => _specifyvisibiltyState();
// }

// class _specifyvisibiltyState extends State<specifyvisibilty> {
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();

//   //   // if (status == 'Normal') {
//   //   // setState(() {
//   //   // HeadNeckvisbility = false;
//   //   // });
//   //   // print(HeadNeckvisbility);
//   //   // } else if (status == 'AbNormal') {
 
//   //   print(HeadNeckvisbility);
//   // }
  

//   @override
//   Widget build(BuildContext context) {
//     return Visibility(
//         visible: HeadNeckvisbility,
//         child: customtextformfield(
//           valuevaldiation: (value) {
//             if (value!.isEmpty) {
//               return 'field required';
//             }
//           },
//           hinttext: 'Specifiy Abnormal',
//         ));
//   }
// }
