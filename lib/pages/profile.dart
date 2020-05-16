import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Container(
        color: Colors.yellow[50],
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow[700]),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/news/news1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
