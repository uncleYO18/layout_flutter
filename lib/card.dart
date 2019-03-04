import 'package:flutter/material.dart';

class Kartu extends StatefulWidget {
  final Widget child;

  Kartu({Key key, this.child}) : super(key: key);

  _KartuState createState() => _KartuState();
}

class _KartuState extends State<Kartu> {
  @override
  Widget build(BuildContext context) {
    var _gambar = Image.asset("assets/image/minion.jpg");

    var _listtile = ListTile(
      title: Text("Stuart", textAlign: TextAlign.center),
      subtitle: Text("Minion, Banana Lover", textAlign: TextAlign.center),
    );

    var _card = Card(
      child: Column(
        children: <Widget>[
          _gambar,
          _listtile,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tampilan Card"),
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _card,
          ],
        ),
      ),
    );
  }
}