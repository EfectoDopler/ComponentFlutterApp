import "package:flutter/material.dart";

class SliderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SliderPage();
  }
}

class _SliderPage extends State<SliderPage> {
  double _value = 50.0;
  bool _isCheckActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider page")),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: this._createImage(),
            ),
            SizedBox(
              height: 40.0,
            ),
            this._createCheckVerification(),
            SizedBox(
              height: 2.0,
            ),
            this._createSlider(),
            SizedBox(
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }

  Slider _createSlider() {
    return Slider(
      min: 0,
      max: 100,
      divisions: 100,
      value: this._value,
      onChanged: (value) {
        setState(() {
          if (!this._isCheckActive) {
            this._value = value;
          }
        });
      },
      activeColor: Colors.green,
      inactiveColor: Colors.lightGreenAccent,
    );
  }

  Image _createImage() {
    return Image(
      image: NetworkImage(
          "https://static.wikia.nocookie.net/sims/images/0/05/The_Sims_4_Modern_Plumbob_Design.png/revision/latest?cb=20190717092532"),
      width: this._value * 2.25,
      fit: BoxFit.contain,
    );
  }

  Row _createCheckVerification() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: this._isCheckActive,
          activeColor: Colors.green,
          onChanged: (status) => {
            setState(() {
              print(status);
              this._isCheckActive = status;
            })
          },
        ),
        Text(
          "Block slider",
          style: TextStyle(color: Colors.green[700]),
        ),
      ],
    );
  }
}
