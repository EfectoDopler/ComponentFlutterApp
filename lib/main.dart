import 'package:flutter/material.dart';

import 'package:app/src/Pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: HomePage(),
    );
  }
}
