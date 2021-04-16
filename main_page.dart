import 'package:flutter/material.dart';
import 'package:note/pages/main_page/add_page/add_page.dart';
import 'package:note/pages/main_page/note_widget.dart';

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
      ),
      body: NoteWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Addpage();
              },
            ),
          );
        },
        backgroundColor: Color.fromRGBO(225, 0, 225, 1),
      ),
    );
  }
}
