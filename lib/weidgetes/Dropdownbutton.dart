import 'package:flutter/material.dart';
import 'package:pregancydoctor/screens/pregancyform.dart';

import '../constants.dart';

class Dropdownbuttonformfield extends StatefulWidget {
  Dropdownbuttonformfield({
    required this.text,
  });
  String text;

  @override
  State<Dropdownbuttonformfield> createState() =>
      _DropdownbuttonformfieldState();
}

class _DropdownbuttonformfieldState extends State<Dropdownbuttonformfield> {
  List<String> dropDwonListValue = ['Normal', 'AbNormal'];
  String dropDwonValue = 'Normal';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 233, 221, 221))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 233, 216, 216))),
        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),
        label: Text(widget.text),
      ),
      items: dropDwonListValue.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          child: Text(value),
          value: value,
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          dropDwonValue = value!;
          status = value;

          // print(HeadNeckvisbility);
        });
      },
    );
  }
}
