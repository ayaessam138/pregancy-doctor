import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l10n_flutter/examples/models/l10n.dart';
import 'package:pregancydoctor/cubit/calender_cubit/calender_cubit.dart';
import 'package:pregancydoctor/cubit/pregancyform_cubit/pregancyform_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pregancydoctor/housescrrens/addnotes.dart';
import 'package:pregancydoctor/housescrrens/appointments.dart';
import 'package:pregancydoctor/housescrrens/notess.dart';
import 'package:pregancydoctor/housescrrens/patients.dart';
import 'package:pregancydoctor/housescrrens/selectnurses.dart';
import 'package:pregancydoctor/screens/calander.dart';
import 'package:pregancydoctor/screens/home_page.dart';
import 'package:pregancydoctor/screens/pregancyform.dart';
import 'package:pregancydoctor/screens/profile.dart';

import 'cubit/navgation_cubit/navgation_cubit/navgation_cubit.dart';

import '../housescrrens/notes.dart';
import 'firebase_options.dart';
import 'package:pregancydoctor/l10n/class L10n.dart';

//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// dart pub global activate flutter_gen
import 'package:easy_localization/easy_localization.dart';

import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(pregancy());
}

class pregancy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavgationCubit(),
        ),
        BlocProvider(
          create: (context) => PregancyformCubit(),
        ),
        BlocProvider(create: ((context) => CalenderCubit()))
      ],
      child: MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        routes: {
          homepage.homeid: (context) => homepage(),
          selectnurses.selectnursesid: (context) => selectnurses(),
          notess.notesid: (context) => notess(),
          appointments.appointmentssid: (context) => appointments(),
          addnotes.addnotesid: (context) => addnotes(),
          patients.patientsid: (context) => patients(),
          profile.profileid: (context) => profile(),
          pregancyform.pregancyformid: (context) => pregancyform()
        },
        initialRoute: homepage.homeid,
      ),
    );
  }
}
