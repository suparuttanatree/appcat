import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Container(
        color: Colors.yellow[50],
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                    colors: [Colors.yellow[100], Colors.yellowAccent[100]])),
            margin: EdgeInsets.all(32),
            padding: EdgeInsets.all(24),
            child: ListView(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow[50],
                    image: DecorationImage(
                        image: AssetImage('images/news/news1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                TextField(onChanged: (value){},
                  decoration: InputDecoration(
                    
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
