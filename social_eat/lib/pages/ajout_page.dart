import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AjoutPage extends StatefulWidget {
  @override
  AjoutPageState createState() => AjoutPageState();
}

class AjoutPageState extends State<AjoutPage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AjoutPage()
            ),
          )
        },
        tooltip: 'Proposer un plat',
        child: Icon(Icons.add),
        elevation: 2,
        backgroundColor: Colors.blueAccent,
      ),
    // Column(
        // children: <Widget>[
          body: Center(
            child: Text('Ajoutez un repas')
          )
        // ],
      // );
    );
    }

}