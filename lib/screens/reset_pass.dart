import 'package:flutter/material.dart';
class reset extends StatefulWidget {
  const reset({Key? key}) : super(key: key);

  @override
  State<reset> createState() => _resetState();
}

class _resetState extends State<reset> {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Color((0xFFE57A7A)),
      title: Text("Reset Password"),


    );
  }
}
