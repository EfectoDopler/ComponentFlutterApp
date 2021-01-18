import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opts = [];

  _MenuProvider() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(response);
    opts = dataMap["rutas"];

    return opts;
  }
}

final menuProvider = new _MenuProvider();
