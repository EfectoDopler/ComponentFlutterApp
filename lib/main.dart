import 'package:flutter/material.dart';

import 'package:app/src/Utils/Routes/routeMap.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      initialRoute: '/',
      routes: routes,
    );
  }
}
