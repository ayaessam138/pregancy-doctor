import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:pregancydoctor/models/addpatient.dart';

import '../../constants.dart';
import '../../models/addpatient.dart';

part 'addpatient_state.dart';

class AddpatientCubit extends Cubit<AddpatientState> {
  AddpatientCubit() : super(AddpatientInitial());

  CollectionReference patients =
      FirebaseFirestore.instance.collection(kaddpatientcollection);

  void addpatients({required String patientname, required String patientid}) {
    patients.add({'patientname': patientname, 'Patientid': patientid});
  }

  List<addpatient> patientlist = [];
  Future<void> showpatients() async {
    emit(AddPatientsloading());
    patients.snapshots().listen((event) {
      patientlist = [];

      for (var doc in event.docs) {
        print(doc.data());
        patientlist
            .add(addpatient.fromjson(doc.data() as Map<String, dynamic>));
      }
      print(
          'dfdddddddddddddddddddddddddddddddddddddddd ${patientlist[0].patientid}');
      emit(Addpatientsucess(addpatients: patientlist));
    });
  }
}
