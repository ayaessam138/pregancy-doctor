import 'package:flutter/material.dart';
import 'package:pregancydoctor/weidgetes/langdropdown.dart';

class changelanguageprofile extends StatelessWidget {
  changelanguageprofile({required this.onpressed});
  VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.language_outlined,
          color: Color(0xffE57A7A),
          size: 35,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 50,
            alignment: AlignmentDirectional.center,
            child: Text(
              'language',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          width: 170,
        ),
        IconButton(
            onPressed: onpressed,
            icon: Icon(
              Icons.arrow_drop_down_sharp,
              size: 33,
              color: Colors.grey,
            ))
      ],
    );
  }
}
