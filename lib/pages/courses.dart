import 'package:flutter/material.dart';
import 'profile.dart';
import 'login.dart';
import 'package:appcat/pages/player.dart';
class CoursesPage extends StatefulWidget {
  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text('My Course'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (null)),
        ],
      ),
      body: Container(
        // new Text('\tบทเรียนของฉัน',style: TextStyle(fontSize: 20),),
        child: ListView(
          children: <Widget>[      
            new Text('\tบทเรียนของฉัน',style: TextStyle(fontSize: 20),),
            Divider(),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PlayerPage()));
                },
                child: ListTile(
                  title: Text('ทบทวนเนื้อหาฟิสิกส์'),
                  leading: Image.asset('images/products/product7.jpg'),
                )),
            Divider(),
            InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => CoursesPage()),
                  // );
                },
                child: ListTile(
                  title: Text('ติวเข้ม PAT2'),
                  leading: Image.asset('images/products/product5.jpg'),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('ติวเข้ม PAT3'),
                  leading: Image.asset('images/products/product6.jpg'),
                )),
            Divider(),
            // InkWell(
            //     onTap: () {},
            //     child: ListTile(
            //       title: Text('Favourites'),
            //       leading: Icon(Icons.favorite, color: Colors.red),
            //     )),
            // Divider(),
            // InkWell(
            //     onTap: () {},
            //     child: ListTile(
            //       title: Text('Settings'),
            //       leading: Icon(Icons.settings, color: Colors.grey),
            //     )),
            // Divider(),
            // InkWell(
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => LogIn()),
            //       );
            //     },
            //     child: ListTile(
            //       title: Text('About'),
            //       leading: Icon(Icons.help, color: Colors.blue),
            //     )),
            // Divider(),
          ],
        ),
      ),
    );
  }
}