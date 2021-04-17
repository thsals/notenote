import 'package:flutter/material.dart';
import 'package:note/model/note_list.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

TextEditingController titleController;
TextEditingController contentController;

class Addpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    titleController = TextEditingController();
    contentController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('add Note'),
        actions: [
          IconButton(
              icon: Icon(Icons.done),
              onPressed: () {
                String title = titleController.text;
                String content = contentController.text;
                notelist.add(Notemodel(title, content, DateTime.now()));
                Navigator.pop(context);
              })
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              maxLength: 10,
              controller: titleController,
              decoration: InputDecoration(hintText: "제목"),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextField(
                controller: contentController,
                maxLines: 1000000,
                decoration: InputDecoration(
                  hintText: "내용",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
