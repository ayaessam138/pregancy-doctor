import 'package:flutter/material.dart';
import 'package:pregancydoctor/screens/pregancyform.dart';

import '../constants.dart';

class Dropdownbuttonformfield extends StatelessWidget {
  Dropdownbuttonformfield({required this.text, required this.onchanged});
  String text;
  Function(dynamic)? onchanged;

  List<String> dropDwonListValue = ['Normal', 'AbNormal'];

  String dropDwonValue = 'Normal';

  String? fieldvalue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: fieldvalue,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 233, 221, 221))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 233, 216, 216))),
        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),
        label: Text(text),
      ),
      items: dropDwonListValue.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          child: Text(value),
          value: value,
        );
      }).toList(),
      onChanged: onchanged,
    );
  }
}
