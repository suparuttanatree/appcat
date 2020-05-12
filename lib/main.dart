import 'package:flutter/material.dart';
import 'package:appcat/pages/home.dart';
import 'package:appcat/pages/home2.dart';
import 'package:appcat/pages/courses.dart';
import 'package:appcat/pages/home3.dart';
import 'package:appcat/pages/massages.dart';
import 'package:appcat/pages/settings.dart';
import 'package:appcat/pages/Answers.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Homepage()
      home : BottmNavigationBar()
    )
  );
}


class MyBottmNavigationBar extends StatefulWidget {
  @override
  _MyBottmNavigationBarState createState() => _MyBottmNavigationBarState();
}

class _MyBottmNavigationBarState extends State<MyBottmNavigationBar> {

  int _currentIndex = 0;
  final List<Widget> _children = [
      HomePage3(),
      // AnswersPage(),
      // CoursesPage(),
      MassagesPage(),
      SettingsPage()
  ];

  void _onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      backgroundColor: Colors.yellow.shade600,
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _currentIndex,
        selectedItemColor: Colors.yellow.shade800,
        onTap: _onTappedBar,
        unselectedItemColor: Colors.grey[800],
      ),
    );
  }
}