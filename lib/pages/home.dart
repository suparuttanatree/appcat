import 'package:flutter/material.dart';
import 'login.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:appcat/components/horizontal_listview.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
      Widget image_carousel = new Container(
      height: 250,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/news/news1.jpg'),
          AssetImage('images/news/news2.jpg'),
          AssetImage('images/news/news3.jpg'),
          AssetImage('images/news/news4.jpg'),
          AssetImage('images/news/news5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        autoplayDuration: Duration(milliseconds: 4000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(

      

      backgroundColor: Colors.yellow.shade100,
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text('Fat cats'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (null)),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Suparuttanatree Buapan'), 
              accountEmail: Text('fm.buapan@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundImage: AssetImage("images/logo.png"),
                // backgroundColor: Colors.orange.shade800,
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.yellow.shade700
            ),
            ),
            InkWell(
              onTap: (){
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.yellow.shade700),
            )
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.yellow.shade700),
            )
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Course'),
                leading: Icon(Icons.school, color: Colors.yellow.shade700),
            )
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Score'),
                leading: Icon(Icons.score, color: Colors.yellow.shade700),
            )
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red),
            )
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.grey),
            )
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()),);
              },
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue),
            )
            ),
          ],
        )
      ),
            body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categorise'),
          ),
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(15.0),
          // child: new Text('Recent products'),
          ),

//        grid view
          // Container(
          //   height: 300,
          //   child: Products(),
          // )
        ]
      ),
    );
  }
}