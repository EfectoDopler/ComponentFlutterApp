import "package:flutter/material.dart";
import "dart:math";

class AnimatedContainerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedContainerPage();
  }
}

class _AnimatedContainerPage extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.orange;
  BorderRadiusGeometry _borderRadious = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated container")),
      body: Center(
        child: this._createContainer(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_moderator),
        onPressed: () => this._changeHeightAndWidth(),
      ),
    );
  }

  AnimatedContainer _createContainer() {
    return AnimatedContainer(
      width: this._width,
      height: this._height,
      duration: Duration(milliseconds: 350),
      decoration:
          BoxDecoration(borderRadius: this._borderRadious, color: this._color),
    );
  }

  void _changeHeightAndWidth() {
    final random = Random();

    setState(() {
      this._height = random.nextInt(300).toDouble();
      this._width = random.nextInt(200).toDouble();
      this._color = Color.fromRGBO(
          random.nextInt(250), random.nextInt(250), random.nextInt(250), 1);
      this._borderRadious =
          BorderRadius.circular(random.nextInt(15).toDouble());
    });
  }
}
