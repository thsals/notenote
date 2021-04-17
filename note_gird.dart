import 'package:flutter/material.dart';

import 'note_widget.dart';

class Notesfrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(10),
      children: List.generate(
        100,
        (index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: NoteWidget(),
          );
        },
      ),
    );
  }
}
