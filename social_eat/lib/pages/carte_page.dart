import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartePage extends StatefulWidget {
  @override
  CartePageState createState() => CartePageState();
}

class CartePageState extends State<CartePage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return 
    // Column(
        // children: <Widget>[
          Center(
            child: Text('Trié par distance')
          );
        // ],
      // );
  }

}