import 'package:flutter/material.dart';
import 'package:flutter_card/card.dart';
import 'package:flutter_card/gridview.dart';
import 'package:flutter_card/listview.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mencoba Flutter",
      // home: Kartu(),
      // home: DaftarView(),
      home: LihatGrid(),
    );

  
  }
}