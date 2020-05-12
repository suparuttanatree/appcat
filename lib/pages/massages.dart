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
        title: new Text("Massages")
      ),
    );
  }
}