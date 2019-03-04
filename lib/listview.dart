import 'package:flutter/material.dart';

class DaftarView extends StatefulWidget {
  final Widget child;

  DaftarView({Key key, this.child}) : super(key: key);

  _DaftarViewState createState() => _DaftarViewState();
}

class _DaftarViewState extends State<DaftarView> {
  @override
  Widget build(BuildContext context) {
    var gambar = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 30.0,
      backgroundImage: AssetImage("assets/image/minion.jpg"),
    );

    var _listtile = ListTile(
      leading: gambar,
      title: Text("Stuart"),
      subtitle: Text("Minion, Banana Lover"),
    );

    var _card = Card(
      child: _listtile,
    );

    var _listview = ListView(
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
      ],
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Implementasi ListView"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: _listview,
      ),
    );
  }
}