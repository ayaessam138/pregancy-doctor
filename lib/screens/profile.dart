import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'about_app_screen.dart';
import 'change_profile_screen.dart';

class profile extends StatelessWidget {
  static String profileid = 'profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Expanded(
                child: Container(
                  alignment: AlignmentDirectional.centerEnd,
                  height: 200,
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            '60',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          Text(
                            '8',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          Text(
                            '2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            'day',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'week',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'month',
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        color: Color(0xffE57A7A),
                        thickness: 10,
                        endIndent: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: Color(0xffE57A7A),
                size: 35,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'last period',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                width: 170,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 33,
                    color: Colors.grey,
                  ))
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Row(
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
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 33,
                    color: Colors.grey,
                  ))
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Row(
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
                      'change profile',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Row(
            children: [
              Icon(
                Icons.settings_input_svideo_outlined,
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
                        return AboutAppScreen();
                      }));
                    },
                    child: Text(
                      'about app',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
