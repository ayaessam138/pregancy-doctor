import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pregancydoctor/cubit/kickcounter_cubit/kickcouter_state.dart';

class kickcouter extends Cubit<kickcounterstate> {
  kickcouter() : super(kickcounterone());
  int kickcounter = 0;

  void increment({required int points}) {
    kickcounter += points;
    emit(kickcounterone());
  }

  void reset() {
    kickcounter = 0;
    emit(kickcounterone());
  }
}
