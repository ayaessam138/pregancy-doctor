import 'package:flutter/material.dart';
import 'package:pregancydoctor/weidgetes/langdropdown.dart';
import 'package:sizer/sizer.dart';

import '../weidgetes/aboutapp.dart';
import '../weidgetes/changelangugeprofile.dart';
import '../weidgetes/changeprofile.dart';
import '../weidgetes/lastperiodprofile.dart';
import '../weidgetes/periodofpregnacy.dart';
import '../weidgetes/profileimage.dart';
import 'about_app_screen.dart';
import 'change_profile_screen.dart';

class profile extends StatefulWidget {
  static String profileid = 'profile';

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool lagdropdownvisibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              profileimage(),
              SizedBox(
                width: 50,
              ),
              periodofpregancy(),
            ],
          ),
          lastperiodprofile(),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          changelanguageprofile(
            onpressed: () {
              setState(() {
                lagdropdownvisibility = !lagdropdownvisibility;
              });
            },
          ),
          Visibility(
              visible: lagdropdownvisibility,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    langdropdown(),
                  ],
                ),
              )),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          changeprofile(),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          aboutapp(),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
