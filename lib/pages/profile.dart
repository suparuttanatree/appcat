import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow[200],
      appBar: AppBar(title : Text("Profile"),backgroundColor: Colors.yellow.shade700,),body: Column(),
    );
  }
}