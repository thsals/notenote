import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteWidget extends StatelessWidget {
  String title;
  String content;
  DateTime dateTime;
  NoteWidget(this.title, this.content, this.dateTime);
  @override
  Widget build(BuildContext context) {
    String date = DateFormat('yyyy-MM-DD').format(dateTime);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(
              content,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
          Expanded(child: Container()),
          Padding(
            child: Text(date),
            padding: EdgeInsets.only(left: 15, bottom: 10),
          ),
        ],
      ),
    );
  }
}
