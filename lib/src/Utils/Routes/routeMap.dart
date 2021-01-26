import 'package:flutter/material.dart';

import 'package:app/src/Pages/home.dart';
import 'package:app/src/Pages/alerts.dart';
import 'package:app/src/Pages/avatar.dart';
import 'package:app/src/Pages/cards.dart';
import 'package:app/src/Pages/animatedContainer.dart';
import 'package:app/src/Pages/inputs.dart';
import 'package:app/src/Pages/slider.dart';
import 'package:app/src/Pages/list.dart';

final routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AvatarPage(),
  'card': (BuildContext context) => CardPage(),
  'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
  'textInputs': (BuildContext context) => InputPage(),
  'sliders': (BuildContext context) => SliderPage(),
  'lists': (BuildContext context) => ListPage(),
};
