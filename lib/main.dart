import 'package:flutter/material.dart';
import 'package:retroresponsive/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cursorColor: Colors.black,
        highlightColor: Colors.black,
        focusColor: Colors.black,
        fontFamily: 'Roboto',
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        accentIconTheme:IconThemeData(
          color: Colors.black
        ) ,
        primaryIconTheme:IconThemeData(
        color: Colors.black
      ) ,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}



