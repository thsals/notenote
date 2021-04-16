import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('title'),
            subtitle: Text('content'),
          ),
          Expanded(child: Container()),
          Padding(
            child: Text('yyyy-mm-dd'),
            padding: EdgeInsets.only(left: 15, bottom: 10),
          ),
        ],
      ),
    );
  }
}
