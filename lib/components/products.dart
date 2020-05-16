import 'package:flutter/material.dart';
import 'package:appcat/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var products_list = [
    {
      "name":"O-NET วิทยาศาสตร์",
      "picture":"images/products/product4.jpg",
      "old_price":"ไม่ระบุ",
      "price":"เร็วๆนี้",
      "categorise":"review",
      "detail":"เอกสาร รวบรวมข้อสอบเก่า O-NET วิชาวิทยาศาสตร์ ตั้งแต่ปี พ.ศ. 2549 ถึง 2562"
    },
    {
      "name":"ข้อสอบเก่า PAT2",
      "picture":"images/products/product5.jpg",
      "old_price":"ไม่ระบุ",
      "price":"เร็วๆนี้",
      "categorise":"review",
      "detail":"เอกสาร รวบรวมข้อสอบเก่า PAT2"
    },
    {
      "name":"ข้อสอบเก่า PAT3",
      "picture":"images/products/product6.jpg",
      "old_price":"ไม่ระบุ",
      "price":"เร็วๆนี้",
      "categorise":"review",
      "detail":"เอกสาร รวบรวมข้อสอบเก่า PAT3"
    },
    {
      "name":"ข้อสอบเก่า ฟิสิกส์",
      "picture":"images/products/product7.jpg",
      "old_price":"ไม่ระบุ",
      "price":"เร็วๆนี้",
      "categorise":"review",
      "detail":"เอกสาร รวบรวมข้อสอบเก่า วิชาฟิสิกส์ทุกสนามสอบ!!"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
      itemBuilder: (BuildContext context ,int index){
        return Single_prod(
          prod_name: products_list[index]['name'],
          prod_picture: products_list[index]['picture'],
          prod_oldprice: products_list[index]['old_price'],
          prod_price: products_list[index]['price'],
          prod_categorise: products_list[index]['categorise'],
          prod_detail: products_list[index]['detail'],
        );
      });
  }
}

class Single_prod extends StatelessWidget{
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;
  final prod_categorise;
  final prod_detail;
  
  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_price,
    this.prod_categorise,
    this.prod_detail
  });
  Widget build(BuildContext context){
    return Card(
      child: Hero(
        tag: new Text(prod_name), 
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductDetails(
              product_detail_name: prod_name,
              product_detail_picture: prod_picture,
              product_detail_old_price: prod_oldprice,
              product_detail_price: prod_price,
              product_detail_categorise: prod_categorise,
              product_detail_detail: prod_detail,
              ))),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: Text(prod_name,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16)),
                    ),
                    new Text("${prod_price}",style: TextStyle(fontWeight:FontWeight.bold ,color: Colors.red),),
                ]
              )
            ),
            child:Image.asset(prod_picture,
            fit: BoxFit.cover,))
          ),
        )),
    );
  }
}