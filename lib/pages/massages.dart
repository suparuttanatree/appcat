import 'package:flutter/material.dart';

class MassagesPage extends StatefulWidget {
  @override
  _MassagesPageState createState() => _MassagesPageState();
}

class _MassagesPageState extends State<MassagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text('Massage',style: TextStyle(fontFamily:'Omyim',fontSize: 50)),
        actions: <Widget>[
          // new IconButton(
          //     icon: Icon(Icons.search, color: Colors.white), onPressed: (null)),
        ],
      ),
    );
  }
}