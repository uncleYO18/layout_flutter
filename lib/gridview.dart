import 'package:flutter/material.dart';

class LihatGrid extends StatefulWidget {
  final Widget child;

  LihatGrid({Key key, this.child}) : super(key: key);

  _LihatGridState createState() => _LihatGridState();
}

class _LihatGridState extends State<LihatGrid> {
  @override
  Widget build(BuildContext context) {
    var _gambar = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 40.0,
      backgroundImage: AssetImage("assets/image/minion.jpg"),
    );

    var _listtile = ListTile(
      title: Text("Stuart", textAlign: TextAlign.center),
      subtitle: Text("Minion, Banana Lover", textAlign: TextAlign.center),
    );

    var _card = Card(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0),
          _gambar,
          _listtile,
        ],
      ),
    );

    var _girdView = GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 3.0, mainAxisSpacing: 3.0),
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        _card,
        _card,
        _card,
        _card,
        _card,
        _card,
        _card,
        _card,
        _card,
        _card,
        _card,
      ],
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tampilan GridView"),
      ),
      body: Container(
        child: _girdView,
      ),
    );
  }
}