import "package:flutter/material.dart";
import "dart:math";

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPage();
  }
}

class _ListPage extends State<ListPage> {
  List<int> _numberList = [];
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    this._addItemsToList();

    this._scrollController.addListener(() {
      if (this._scrollController.position.pixels ==
          (this._scrollController.position.maxScrollExtent)) {
        this._addItemsToList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
      ),
      body: this._createList(),
    );
  }

  ListView _createList() {
    return ListView.builder(
      controller: this._scrollController,
      itemCount: this._numberList.length,
      itemBuilder: (BuildContext context, int index) {
        final image = this._numberList[index];
        return Image(
            image: NetworkImage("https://picsum.photos/500/300?image=$image"));
      },
    );
  }

  void _addItemsToList() {
    final random = Random();
    setState(() {
      for (int i = 0; i < 10; i++) {
        this._numberList.add(random.nextInt(60));
      }
    });
  }
}
