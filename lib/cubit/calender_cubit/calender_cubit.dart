import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:pregancydoctor/constants.dart';

part 'calender_state.dart';

class CalenderCubit extends Cubit<CalenderState> {
  CalenderCubit() : super(CalenderInitial());
  CollectionReference Calender =
      FirebaseFirestore.instance.collection(kcalendercollection);

  void addevent({required String eventTitle, required String eventDescp}) {
    Calender.add({'eventTitle': eventTitle, 'eventDescp': eventDescp});
  }
}
