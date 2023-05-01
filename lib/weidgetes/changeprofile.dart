import 'package:flutter/material.dart';

import '../screens/change_profile_screen.dart';

class changeprofile extends StatelessWidget {
  const changeprofile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.edit_note_rounded,
          color: Color(0xffE57A7A),
          size: 35,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 50,
            alignment: AlignmentDirectional.centerStart,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ChangeProfile();
                }));
              },
              child: Text(
                'Change Profile',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
