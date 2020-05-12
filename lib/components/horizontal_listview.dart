import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Category(
          image_location: 'images/categorise/categorise1.png',
          image_caption: 'categorise1'
        ),

        Category(
          image_location: 'images/categorise/categorise2.png',
          image_caption: 'categorise2'
        ),

        Category(
          image_location: 'images/categorise/categorise3.png',
          image_caption: 'categorise3'
        ),

        Category(
          image_location: 'images/categorise/categorise4.png',
          image_caption: 'categorise4'
        ),

        ],

      ),
    );
  }
}

class Category extends StatelessWidget{
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
  });

  Widget build(BuildContext context){
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap:(){},
    child: Container(
      width: 100 ,
      child: ListTile(
        title: Image.asset(image_location,width: 100,height: 80,
        ),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption,style: new TextStyle(fontSize:12,),),
        ),
        )
    )
    ),);
  }
}