import 'package:flutter/material.dart';
import 'package:pregancydoctor/constants.dart';

class notess extends StatefulWidget {
  static String notesid = 'notes';
  notess({Key? key}) : super(key: key);

  @override
  State<notess> createState() => _notessState();
}

class _notessState extends State<notess> {
  String input = '';
  List note = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimarycolor,
        title: Text('Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kprimarycolor,
        child: Icon(
          Icons.add,
          size: 35,
          color: Colors.white,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Add your note'),
                  content: TextField(
                    decoration: InputDecoration(hintText: 'Add note'),
                    onChanged: (String value) {
                      input = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            note.add(input);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'ADD',
                          style: TextStyle(color: Color(0xFFE57A7A)),
                        ))
                  ],
                );
              });
        },
      ),

      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: note.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(note[index]),
                child: Card(
                  elevation: 4,
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    title: Text(
                      note[index],
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Color(0xFFE57A7A),
                      ),
                      onPressed: () {
                        setState(() {
                          note.removeAt(index);
                        });
                      },
                    ),
                  ),
                ));
          },
        ),
      ),

      //bottomNavigationBar: navigationBar(),
    );
  }
}
