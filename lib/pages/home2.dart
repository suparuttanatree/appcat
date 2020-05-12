import 'package:flutter/material.dart';
import 'package:appcat/pages/courses.dart';
import 'package:appcat/pages/home.dart';
import 'package:appcat/pages/massages.dart';
import 'package:appcat/pages/settings.dart';
import 'package:appcat/pages/Answers.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:appcat/components/horizontal_listview.dart';
import 'login.dart';

class BottmNavigationBar extends StatefulWidget {
  @override
  _BottmNavigationBarState createState() => _BottmNavigationBarState();
}

class _BottmNavigationBarState extends State<BottmNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    //Navigator.push(context, MaterialPageRoute(builder: (context)=> Hompage()));,
    Homepage(),
    AnswersPage(),
    CoursesPage(),
    MassagesPage(),
    SettingsPage()
  ];

  void _onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
    return new Scaffold(
      body: _children[_currentIndex],
      backgroundColor: Colors.yellow.shade600,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: new Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), title: new Text("Answer")),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), title: new Text("Course")),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: new Text("Massage")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: new Text("Me")),
        ],
        selectedItemColor: Colors.yellow.shade800,
        unselectedItemColor: Colors.grey[800],
      ),
    );
  }
}
