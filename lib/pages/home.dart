import 'package:flutter/material.dart';
import 'login.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:appcat/components/horizontal_listview.dart';
import 'package:appcat/pages/courses.dart';
import 'profile.dart';
import 'package:appcat/main.dart';
import 'package:appcat/utility/mystlye.dart';
import 'package:appcat/components/products.dart';

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
        title: Text('Fat cats',style: TextStyle(fontFamily:'Omyim',fontSize: 50),),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: (null)),
        ],
      ),
      body: Container(
        child: new ListView(
          children: <Widget>[
          
          image_carousel,
          new Padding(
            
            padding: const EdgeInsets.all(8.0),
            child: new Text('หมวดหมู่',style: TextStyle(fontFamily:'Omyim',fontSize: 30)),
          ),
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(15.0),
            child: new Text('แนะนำ',style: TextStyle(fontFamily:'Omyim',fontSize: 30)),
          ),

      //  grid view
          Container(
            height: 340,
            child: Products(),
          )
        ]
        ),
      ),
    );
  }
}
