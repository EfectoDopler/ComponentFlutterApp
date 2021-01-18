import 'package:flutter/material.dart';

import 'package:app/src/Pages/home.dart';
import 'package:app/src/Pages/alerts.dart';
import 'package:app/src/Pages/avatar.dart';
import 'package:app/src/Pages/cards.dart';

final routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AvatarPage(),
  'card': (BuildContext context) => CardPage(),
};
