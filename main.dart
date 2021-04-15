import 'package:flutter/material.dart';
import 'package:note/pages/main_page.dart';
void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color.fromRGBO(165, 245, 196, 1)),
      ),
      debugShowCheckedModeBanner: false,
      home: Mainpage(),
    );
  }
}
