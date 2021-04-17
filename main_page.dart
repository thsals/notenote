import 'package:flutter/material.dart';
import 'package:note/pages/main_page/add_page/add_page.dart';
import 'package:note/pages/main_page/note_grid.dart';
import 'package:note/pages/main_page/note_widget.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
      ),
      body: NotesGrid(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Addpage();
              },
            ),
          );
          setState(() {});
        },
        backgroundColor: Color.fromRGBO(225, 0, 225, 1),
      ),
    );
  }
}
