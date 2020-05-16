import 'package:flutter/material.dart';
import 'login.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:appcat/components/horizontal_listview.dart';
import 'package:appcat/pages/courses.dart';
import 'profile.dart';
import 'package:appcat/main.dart';
import 'package:appcat/utility/mystlye.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: new AppBar(
        title: new Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.yellow[700],
      //   Container(
      //               decoration: new BoxDecoration(
      //                 color: Colors.yellow[400],
      //                 shape: BoxShape.circle,
      //                 image: DecorationImage(
      //                     image: AssetImage('images/news/news1.jpg'),
      //                     fit: BoxFit.cover),
      //               ),
      // ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[      
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person, color: Colors.yellow.shade700),
                )),
            Divider(),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursesPage()),
                  );
                },
                child: ListTile(
                  title: Text('My Course'),
                  leading: Icon(Icons.school, color: Colors.yellow.shade700),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Score'),
                  leading: Icon(Icons.score, color: Colors.yellow.shade700),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite, color: Colors.red),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.grey),
                )),
            Divider(),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogIn()),
                  );
                },
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.blue),
                )),
            Divider(),
          ],
        ),
      ),
    );
  }
}
