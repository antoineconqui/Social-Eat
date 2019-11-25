import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilPage extends StatefulWidget {
  @override
  ProfilPageState createState() => ProfilPageState();
}

class ProfilPageState extends State<ProfilPage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return 
    // Column(
        // children: <Widget>[
          Center(
            child: Text('Votre Profil')
          );
        // ],
      // );
  }

}