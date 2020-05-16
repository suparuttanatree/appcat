import 'package:flutter/material.dart';
import 'package:appcat/pages/courses.dart';
import 'package:appcat/pages/home.dart';
import 'package:appcat/pages/massages.dart';
import 'package:appcat/pages/settings.dart';
import 'package:appcat/pages/Answers.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:appcat/components/horizontal_listview.dart';
import 'profile.dart';
import 'login.dart';



class AnswersPage extends StatefulWidget {
  @override
  _AnswersPageState createState() => _AnswersPageState();
}

class _AnswersPageState extends State<AnswersPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text('Answer',style: TextStyle(fontFamily:'Omyim',fontSize: 50)),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: (null)),
        ],
      ),
      );
    
  }
}