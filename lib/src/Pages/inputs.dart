import "package:flutter/material.dart";

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Inputpage();
  }
}

class _Inputpage extends State<InputPage> {
  int _characterCounter = 0;
  var _names = <String>[];
  var _widgetList = <dynamic>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text inputs")),
      body: this._createListView(),
    );
  }

  ListView _createListView() {
    this._widgetList = this._createWidgetList();
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
      children: this._widgetList,
    );
  }

  dynamic _createWidgetList() {
    var dynamicList = <Widget>[];
    dynamicList = [
      TextField(
        autofocus: true,
        obscureText: false,
        textCapitalization: TextCapitalization.words,
        onChanged: (text) => this._characterCount(text),
        onSubmitted: (name) => this._addNameToList(name),
        decoration: InputDecoration(
            icon: Icon(Icons.warning_sharp),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            counter: Text("Size: ${this._characterCounter}"),
            hintText: "Name",
            labelText: "Name input",
            helperText: "Write only your name",
            suffixIcon: Icon(Icons.accessibility)),
      ),
    ];

    for (String name in this._names) {
      dynamicList.add(ListTile(title: Text("Hola $name")));
    }

    return dynamicList;
  }

  void _characterCount(String text) {
    setState(() {
      this._characterCounter = text.length;
    });
  }

  void _addNameToList(String name) {
    setState(() {
      print(name);
      this._names.add(name);
    });
  }
}
