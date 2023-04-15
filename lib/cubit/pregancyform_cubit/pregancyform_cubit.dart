import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pregancydoctor/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pregancydoctor/screens/pregancyform.dart';

part 'pregancyform_state.dart';

class PregancyformCubit extends Cubit<PregancyformState> {
  PregancyformCubit() : super(PregancyformInitial());
  CollectionReference pregancyform =
      FirebaseFirestore.instance.collection(kpregancyformcollection);
  void submitform({
    required String? name,
    required String? Age,
    required String? Ageatmarriage,
    required String? adress,
    required String? husbandage,
    required String? LevelOfEducation,
    required String? Ocuppation,
    required String? Habit,
    required String? HusbandHabit,
    required String? HusbandOcuppation,
    required String? AgeofMenarche,
    required String? DurationofMenses,
    required String? IntervalofCycle,
    required String? FallTermPregancy,
    required String? Pretermpregancy,
    required String? Abortion,
    required String? LiveBabies,
    required String? BloodGroup,
    required String? RhFactor,
    required String? TORCH,
    required String? Sugar,
    required String? Ketone,
    required String? uss,
    required String? Height,
    required String? Weight,
    required String? PrePregancyBodyMassIndex,
    required String? BloodPressure,
    required String? Pluse,
  }) {
    pregancyform.add({
      'Head&neck': status,
      'name': name,
      'Age': Age,
      'Ageatmarriage': Ageatmarriage,
      'adress': adress,
      'husbandage': husbandage,
      'LevelOfEducation': LevelOfEducation,
      'Ocuppation': Ocuppation,
      'Habit': Habit,
      'HusbandHabit': HusbandHabit,
      'HusbandOcuppation': HusbandOcuppation,
      'AgeofMenarche': AgeofMenarche,
      'DurationofMenses': DurationofMenses,
      'IntervalofCycle': IntervalofCycle,
      'FallTermPregancy': FallTermPregancy,
      'Pretermpregancy': Pretermpregancy,
      'Abortion': Abortion,
      'LiveBabies': LiveBabies,
      'BloodGroup': BloodGroup,
      'RhFactor': RhFactor,
      'TORCH': TORCH,
      'Sugar': Sugar,
      'Ketone': Ketone,
      'uss': uss,
      'Height': Height,
      'Weight': Weight,
      'PrePregancyBodyMassIndex': PrePregancyBodyMassIndex,
      'BloodPressure': BloodPressure,
      'Pluse': Pluse
    });
  }
}