import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListePage extends StatefulWidget {
  @override
  ListePageState createState() => ListePageState();
}

class ListePageState extends State<ListePage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return 
    // Column(
        // children: <Widget>[
          Center(
            child: Text('Recommandé pour toi')
          );
        // ],
      // );
  }

}