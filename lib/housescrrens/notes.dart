import 'package:flutter/material.dart';

import '../housescrrens/addnotes.dart';
import 'package:pregancydoctor/constants.dart';

class notes extends StatelessWidget {
  static String notesid = 'notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kprimarycolor,
          title: Text(
            'Notes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, addnotes.addnotesid);
          },
          backgroundColor: kprimarycolor,
          child: const Icon(Icons.add),
        ));
  }
}
