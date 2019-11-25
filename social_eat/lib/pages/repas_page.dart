import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RepasPage extends StatefulWidget {
  @override
  RepasPageState createState() => RepasPageState();
}

class RepasPageState extends State<RepasPage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return 
    // Column(
        // children: <Widget>[
          Center(
            child: Text('Vos repas programmés')
          );
        // ],
      // );
  }

}