import 'package:flutter/material.dart';

class customtextformfield extends StatelessWidget {
  customtextformfield(
      {this.hinttext,
      this.onchanged,
      this.labeltext,
      this.fieldtype,
      required this.valuevaldiation});
  String? hinttext;
  String? labeltext;
  FormFieldValidator<String> valuevaldiation;
  Function(dynamic)? onchanged;
  TextInputType? fieldtype;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: fieldtype,
      validator: valuevaldiation,
      onChanged: onchanged,
      decoration: InputDecoration(
          labelText: labeltext,
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 233, 221, 221))),
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 233, 216, 216)))),
    );
  }
}

// class fieldLabel extends StatelessWidget {
//   String fieldlabel;
//   fieldLabel({required this.fieldlabel});

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       fieldlabel,
//       style: TextStyle(fontWeight: FontWeight.bold),
//     );
//   }
// }
