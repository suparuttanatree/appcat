import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container( 
      height: 100,color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/categorise/categorise1.png',
              image_caption: 'ประเมินคณะ'),
          Category(
              image_location: 'images/categorise/categorise2.png',
              image_caption: 'ทบทวน'),
          Category(
              image_location: 'images/categorise/categorise3.png',
              image_caption: 'แนะแนว'),
          Category(
              image_location: 'images/categorise/categorise4.png',
              image_caption: 'จำลองสอบ'),
          // Category(
          //     image_location: 'images/categorise/categorise1.png',
          //     image_caption: 'categorise5'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
              width: 100,
              child: ListTile(
                title: Image.asset(
                  image_location,
                  width: 100,
                  height: 80,
                ),
                subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    image_caption,
                    style: TextStyle(fontFamily:'Omyim',fontSize: 16)

                  ),
                ),
              ))),
    );
  }
}
