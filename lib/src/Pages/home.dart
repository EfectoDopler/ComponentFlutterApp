import 'package:app/src/Pages/cards.dart';
import "package:flutter/material.dart";

import "package:app/src/providers/menu_provider.dart";
import "package:app/src/Utils/iconUtilities.dart";
import "package:app/src/Pages/alerts.dart";
import "package:app/src/Pages/avatar.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home view")),
      body: _myList(),
    );
  }

  Widget _myList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemList(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _itemList(List<dynamic> data, BuildContext context) {
    List<Widget> list = [];

    data.forEach((opt) {
      final itemOpt = ListTile(
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_right),
        title: Text(opt['texto']),
        subtitle: Text(opt['subTexto']),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      list.add(itemOpt);
      list.add(Divider());
    });

    return list;
  }
}
