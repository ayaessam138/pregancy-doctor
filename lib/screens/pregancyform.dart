import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pregancydoctor/cubit/pregancyform_cubit/pregancyform_cubit.dart';
import 'package:pregancydoctor/screens/investigation.dart';
import 'package:pregancydoctor/screens/obestrichistory.dart';
import 'package:pregancydoctor/screens/personalinfo.dart';
import 'package:pregancydoctor/screens/physicaleximination.dart';
import 'package:pregancydoctor/weidgetes/custombutton.dart';
import 'package:pregancydoctor/weidgetes/subtitleofpregancyform.dart';
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
  bool HeadNeckvisbility = false;
  bool BreastsNipplesvisbility = false;
  bool Chestvisibility = false;
  bool TeethGumsvisibility = false;
  bool Heartvisbility = false;
  bool Abdomenvisbility = false;
  bool Backbonevisbility = false;
  bool VaricositiesExtremitiesvisibility = false;
  bool Edemavisbility = false;
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController Age = TextEditingController();
  TextEditingController Ageatmarriage = TextEditingController();
  TextEditingController adress = TextEditingController();
  TextEditingController husbandage = TextEditingController();
  TextEditingController LevelOfEducation = TextEditingController();
  TextEditingController Ocuppation = TextEditingController();
  TextEditingController Habit = TextEditingController();
  TextEditingController HusbandHabit = TextEditingController();
  TextEditingController HusbandOcuppation = TextEditingController();
  TextEditingController AgeofMenarche = TextEditingController();
  TextEditingController DurationofMenses = TextEditingController();
  TextEditingController IntervalofCycle = TextEditingController();
  TextEditingController FallTermPregancy = TextEditingController();
  TextEditingController Pretermpregancy = TextEditingController();
  TextEditingController Abortion = TextEditingController();
  TextEditingController LiveBabies = TextEditingController();
  TextEditingController BloodGroup = TextEditingController();
  TextEditingController RhFactor = TextEditingController();
  TextEditingController TORCH = TextEditingController();
  TextEditingController Sugar = TextEditingController();
  TextEditingController Ketone = TextEditingController();
  TextEditingController uss = TextEditingController();
  TextEditingController Height = TextEditingController();
  TextEditingController Weight = TextEditingController();
  TextEditingController PrePregancyBodyMassIndex = TextEditingController();
  TextEditingController BloodPressure = TextEditingController();
  TextEditingController Pluse = TextEditingController();
  String? HeadNeckdropdown;
  TextEditingController headneckspecify = TextEditingController();
  String? BreastsNipplesdropDwonValue;
  TextEditingController BreastsNipplesspeficy = TextEditingController();
  String? ChestdropDwonValue;
  TextEditingController Chestspecify = TextEditingController();
  String? TeethGumsdropDwonValue;
  TextEditingController TeethGumsspecify = TextEditingController();
  String? HeartdropDwonValue;
  TextEditingController Heartspecify = TextEditingController();
  String? AbdomendropDwonValue;
  TextEditingController Abdomenspecify = TextEditingController();
  String? BackbonedropDwonValue;
  TextEditingController Backbonespecify = TextEditingController();
  String? varicositiesExtremitiesValue;
  TextEditingController varicositiesExtremitiesspecify =
      TextEditingController();
  String? EdemadropDwonValue;
  TextEditingController Edemaspecify = TextEditingController();

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
            Subtitleofpregnacyform(title: 'Personal Information'),
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
            Subtitleofpregnacyform(title: 'menstrualhistory'),
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
            Subtitleofpregnacyform(title: 'Obstetric history'),
            SizedBox(
              height: 15,
            ),
            obertichistory(
                FallTermPregancy: FallTermPregancy,
                Pretermpregancy: Pretermpregancy,
                Abortion: Abortion,
                LiveBabies: LiveBabies),
            Subtitleofpregnacyform(title: 'Investegations'),
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
            Subtitleofpregnacyform(title: 'Pyshical Examination'),
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
            Dropdownbuttonformfield(
              onchanged: (value) {
                setState(() {
                  HeadNeckdropdown = value;
                  status = value!;
                  if (status == 'Normal') {
                    HeadNeckvisbility = false;
                  } else if (status == 'AbNormal') {
                    HeadNeckvisbility = true;
                  }
                });
              },
              text: 'Head&neck',
            ),
            SizedBox(
              height: 15,
            ),
            Visibility(
                visible: HeadNeckvisbility,
                child: customtextformfield(
                  controller: headneckspecify,
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
              onchanged: (value) {
                setState(() {
                  BreastsNipplesdropDwonValue = value;
                  status = value!;
                  if (status == 'Normal') {
                    BreastsNipplesvisbility = false;
                  } else if (status == 'AbNormal') {
                    BreastsNipplesvisbility = true;
                  }
                });
              },
              text: 'Breasts&Nipples',
            ),
            SizedBox(
              height: 15,
            ),
            Visibility(
                visible: BreastsNipplesvisbility,
                child: customtextformfield(
                  controller: BreastsNipplesspeficy,
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
              onchanged: (value) {
                setState(() {
                  ChestdropDwonValue = value;
                  status = value!;
                  if (status == 'Normal') {
                    Chestvisibility = false;
                  } else if (status == 'AbNormal') {
                    Chestvisibility = true;
                  }
                });
              },
              text: 'Chest',
            ),
            SizedBox(
              height: 15,
            ),
            Visibility(
                visible: Chestvisibility,
                child: customtextformfield(
                  controller: Chestspecify,
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
              onchanged: (value) {
                setState(() {
                  TeethGumsdropDwonValue = value;
                  status = value!;
                  if (status == 'Normal') {
                    TeethGumsvisibility = false;
                  } else if (status == 'AbNormal') {
                    TeethGumsvisibility = true;
                  }
                });
              },
              text: 'Teeth&Gums',
            ),
            SizedBox(
              height: 15,
            ),
            Visibility(
                visible: TeethGumsvisibility,
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
              onchanged: (value) {
                setState(() {
                  HeartdropDwonValue = value;
                  status = value!;
                  if (status == 'Normal') {
                    Heartvisbility = false;
                  } else if (status == 'AbNormal') {
                    Heartvisbility = true;
                  }
                });
              },
              text: 'Heart',
            ),
            SizedBox(
              height: 15,
            ),
            Visibility(
                visible: Heartvisbility,
                child: customtextformfield(
                  controller: Heartspecify,
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
              onchanged: (value) {
                setState(() {
                  AbdomendropDwonValue = value;
                  status = value!;
                  if (status == 'Normal') {
                    Abdomenvisbility = false;
                  } else if (status == 'AbNormal') {
                    Abdomenvisbility = true;
                  }
                });
              },
              text: 'Abdomen',
            ),
            SizedBox(
              height: 15,
            ),
            Visibility(
                visible: Abdomenvisbility,
                child: customtextformfield(
                  controller: Abdomenspecify,
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
              onchanged: (value) {
                setState(() {
                  BackbonedropDwonValue = value;
                  status = value!;
                  if (status == 'Normal') {
                    Backbonevisbility = false;
                  } else if (status == 'AbNormal') {
                    Backbonevisbility = true;
                  }
                });
              },
              text: 'Backbone',
            ),
            SizedBox(
              height: 15,
            ),
            Visibility(
                visible: Backbonevisbility,
                child: customtextformfield(
                  controller: Backbonespecify,
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
              onchanged: (value) {
                setState(() {
                  varicositiesExtremitiesValue = value;
                  status = value!;
                  if (status == 'Normal') {
                    VaricositiesExtremitiesvisibility = false;
                  } else if (status == 'AbNormal') {
                    VaricositiesExtremitiesvisibility = true;
                  }
                });
              },
              text: 'Varicosities&Extremities',
            ),
            SizedBox(
              height: 15,
            ),
            Visibility(
                visible: VaricositiesExtremitiesvisibility,
                child: customtextformfield(
                  controller: varicositiesExtremitiesspecify,
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
              onchanged: (value) {
                setState(() {
                  EdemadropDwonValue = value;
                  status = value!;
                  if (status == 'Normal') {
                    Edemavisbility = false;
                  } else if (status == 'AbNormal') {
                    Edemavisbility = true;
                  }
                });
              },
              text: 'Edema',
            ),
            SizedBox(
              height: 15,
            ),
            Visibility(
                visible: Edemavisbility,
                child: customtextformfield(
                  controller: Edemaspecify,
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
            custoumbutton(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    BlocProvider.of<PregancyformCubit>(context).submitform(
                        name: name.text,
                        Age: Age.text,
                        Ageatmarriage: Ageatmarriage.text,
                        adress: adress.text,
                        husbandage: husbandage.text,
                        LevelOfEducation: LevelOfEducation.text,
                        Ocuppation: Ocuppation.text,
                        Habit: Habit.text,
                        HusbandHabit: HusbandHabit.text,
                        HusbandOcuppation: HusbandOcuppation.text,
                        AgeofMenarche: AgeofMenarche.text,
                        DurationofMenses: DurationofMenses.text,
                        IntervalofCycle: IntervalofCycle.text,
                        FallTermPregancy: FallTermPregancy.text,
                        Pretermpregancy: Pretermpregancy.text,
                        Abortion: Abortion.text,
                        LiveBabies: LiveBabies.text,
                        BloodGroup: BloodGroup.text,
                        RhFactor: RhFactor.text,
                        TORCH: TORCH.text,
                        Sugar: Sugar.text,
                        Ketone: Ketone.text,
                        uss: uss.text,
                        Height: Height.text,
                        Weight: Weight.text,
                        PrePregancyBodyMassIndex: PrePregancyBodyMassIndex.text,
                        BloodPressure: BloodPressure.text,
                        Pluse: Pluse.text,
                        HeadNeckdropdown: HeadNeckdropdown,
                        headneckspecify: headneckspecify.text ?? 'headnormal',
                        BreastsNipplesdropDwonValue:
                            BreastsNipplesdropDwonValue,
                        BreastsNipplesspeficy: BreastsNipplesspeficy.text ??
                            'BreastsNipplesnormal',
                        ChestdropDwonValue: ChestdropDwonValue,
                        Chestspecify: Chestspecify.text ?? 'Chestnormal',
                        TeethGumsdropDwonValue: TeethGumsdropDwonValue,
                        TeethGumsspecify:
                            TeethGumsspecify.text ?? 'TeethGumsnormal',
                        HeartdropDwonValue: HeartdropDwonValue,
                        Heartspecify: Heartspecify.text ?? 'Heartnormal',
                        AbdomendropDwonValue: AbdomendropDwonValue,
                        Abdomenspecify: Abdomenspecify.text ?? 'Abdomennormal',
                        BackbonedropDwonValue: BackbonedropDwonValue,
                        Backbonespecify:
                            Backbonespecify.text ?? 'Backbonenormal',
                        varicositiesExtremitiesValue:
                            varicositiesExtremitiesValue,
                        varicositiesExtremitiesspecify:
                            varicositiesExtremitiesspecify.text ??
                                'varicositiesExtremitiesnormal',
                        EdemadropDwonValue: EdemadropDwonValue,
                        Edemaspecify: Edemaspecify.text ?? 'Edemanormal');
                  }
                },
                text: 'submit')
          ],
        ),
      ),
    )));
  }
}
