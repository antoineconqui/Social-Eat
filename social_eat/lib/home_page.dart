import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/FABBottomAppBar.dart';
import 'pages/ajout_page.dart';
import 'pages/liste_page.dart';
import 'pages/carte_page.dart';
import 'pages/repas_page.dart';
import 'pages/profil_page.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  
  static List<FABBottomAppBarItem> _fABBottomAppBarItems = [
      FABBottomAppBarItem(iconData : Icons.list, text : 'Liste', widget : ListePage()),
      FABBottomAppBarItem(iconData : Icons.map, text : 'Carte', widget : CartePage()),
      FABBottomAppBarItem(iconData : Icons.assignment, text : 'Repas', widget : RepasPage()),
      FABBottomAppBarItem(iconData : Icons.account_circle, text : 'Profil', widget : ProfilPage()),
  ];
  Widget _bodyWidget;

  @override
  void initState() {
    super.initState();
    _bodyWidget = ListePage();
  }

  void updateWidget(Widget widget){
    setState(() {
      _bodyWidget = widget;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setEnabledSystemUIOverlays ([]);

    return Scaffold(
      body: _bodyWidget,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.black,
        backgroundColor: Colors.grey,
        selectedColor: Colors.white,
        notchedShape: CircularNotchedRectangle(),
        items: _fABBottomAppBarItems,
        callback: updateWidget,
      ),
    );

  }
}