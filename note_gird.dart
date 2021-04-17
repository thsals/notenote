import 'package:flutter/material.dart';
import 'package:note/model/note_list.dart';

import 'note_widget.dart';

class NotesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(10),
      children: List.generate(
        notelist.length,
        (index) {
          Notemodel note = notelist[index];
          return Padding(
            padding: EdgeInsets.all(10),
            child: NoteWidget(note.title, note.content, note.time),
          );
        },
      ),
    );
  }
}
