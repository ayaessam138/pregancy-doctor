import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../housescrrens/house.dart';
import '../../../screens/calander.dart';
import '../../../screens/prediction.dart';
import '../../../screens/pregancyform.dart';
import '../../../screens/profile.dart';

part 'navgation_state.dart';

class NavgationCubit extends Cubit<NavgationState> {
  NavgationCubit() : super(NavgationInitial());

  int currentindex = 0;

  List<BottomNavigationBarItem> ITEMS = [
    BottomNavigationBarItem(
        label: 'Home', icon: Icon(Icons.home, color: kprimarycolor)),
    BottomNavigationBarItem(
      label: 'Calender',
      icon: Icon(Icons.calendar_view_day_rounded, color: kprimarycolor),
      backgroundColor: Colors.black,
    ),
    BottomNavigationBarItem(
      label: 'Predection',
      icon: Icon(Icons.warning, color: kprimarycolor),
    ),
    BottomNavigationBarItem(
      label: 'Profile',
      icon: Icon(Icons.person, color: kprimarycolor),
    ),
    BottomNavigationBarItem(
      label: 'Assessment',
      icon: Icon(Icons.folder, color: kprimarycolor),
    ),
  ];
  List<Widget> Screens = [
    house(),
    calendar(),
    predection(),
    profile(),
    pregancyform()
  ];
  List<String> apppartitle = [
    'Home',
    'calender',
    'Predection',
    'Profile',
    'Pregancy Form'
  ];
  void pagenavgation(int index) {
    currentindex = index;
    emit(NavgationInitial());
  }
}
