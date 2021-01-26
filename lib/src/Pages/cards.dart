import "package:flutter/material.dart";

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          this._createFirstCard(),
          SizedBox(height: 30),
          this._createCardWithContainer()
        ],
      ),
    );
  }

  Card _createFirstCard() {
    var myCard = Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text("Im a card"),
              subtitle: Text("Im a card subtitleeeeeeeee."),
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text("Accept"),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text("Cancel"),
                  onPressed: () {},
                )
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            )
          ],
        ));
    return myCard;
  }

  Container _createCardWithContainer() {
    return Container(
      child: this._createFirstCard(),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.5),
          color: Colors.green,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.lightGreen,
              blurRadius: 10.0,
              spreadRadius: 5,
            )
          ]),
    );
  }
}
