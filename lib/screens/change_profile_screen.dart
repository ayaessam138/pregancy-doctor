import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChangeProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change profile'),
        backgroundColor: Color(0xffE57A7A),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Text(
                    'dina emad',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                validator: (value){
                  if(value!.isNotEmpty){
                    return 'name must not be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'first name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                validator: (value){
                  if(value!.isNotEmpty){
                    return 'name must not be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'last name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                validator: (value){
                  if(value!.isNotEmpty){
                    return 'e-mail must not be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'e-mail',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                validator: (value){
                  if(value!.isNotEmpty){
                    return 'password must not be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Current Password',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_rounded,
                  ),
                  border: OutlineInputBorder(),
                ),
                //onFieldSubmitted:(value){
                //print(value);//},
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                validator: (value){
                  if(value!.isNotEmpty){
                    return 'password must not be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'New Password',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_rounded,
                  ),
                  border: OutlineInputBorder(),
                ),
                //onFieldSubmitted:(value){
                //print(value);//},
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  alignment: AlignmentDirectional.center,
                  width: 100,
                  color: Color(0xffE57A7A),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Update',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
