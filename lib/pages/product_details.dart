import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_price;
  final product_detail_categorise;
  final product_detail_detail;

  ProductDetails({
  this.product_detail_name,
  this.product_detail_picture,
  this.product_detail_old_price,
  this.product_detail_price,
  this.product_detail_categorise,
  this.product_detail_detail
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text('${widget.product_detail_name}'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: (null)),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 280,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture)
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child:new Text("\฿${widget.product_detail_old_price}",style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w800,decoration: TextDecoration.lineThrough))
                      ),
                      Expanded(
                        child:new Text("\฿${widget.product_detail_price}",style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800))
                      ),
                    ]
                  ),
                ),
              ),
              ),
          ),
          Row(
            children: <Widget>[
            Expanded(
              child: MaterialButton(onPressed:(){},
              color: Colors.red,
              textColor: Colors.white,
              elevation: 0.4,
              child: new Text("Buy now")
              )
            ),

            new IconButton(icon: Icon(Icons.add_shopping_cart ,color: Colors.red,), onPressed: (){}),

            new IconButton(icon: Icon(Icons.favorite_border ,color: Colors.red,), onPressed: (){}),

          ]
          ),
          Divider(),
          new ListTile(
          title: new Text("Details"),
          subtitle: new Text("\t${widget.product_detail_detail}"),
        ),
        Divider(),
        new Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
            child: new Text("Name :",style: TextStyle(color: Colors.grey),),),
            Padding(padding: EdgeInsets.all(5),
            child: new Text(widget.product_detail_name),)
          ]
        ),
        new Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
            child: new Text("Categorise :",style: TextStyle(color: Colors.grey),),),
            Padding(padding: EdgeInsets.all(5),
            child: new Text("${widget.product_detail_categorise}"),)
          ]
        ),
        Divider(),
        ]
      )
    );
  }
}