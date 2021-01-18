import "package:flutter/material.dart";

import "package:app/src/providers/menu_provider.dart";
import "package:app/src/Utils/iconUtilities.dart";

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
          children: _itemList(snapshot.data),
        );
      },
    );
  }

  List<Widget> _itemList(List<dynamic> data) {
    List<Widget> list = [];

    data.forEach((opt) {
      final itemOpt = ListTile(
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_right),
        title: Text(opt['texto']),
        subtitle: Text(opt['subTexto']),
      );

      list.add(itemOpt);
      list.add(Divider());
    });

    return list;
  }
}
