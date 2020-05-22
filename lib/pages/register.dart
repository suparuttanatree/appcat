import 'package:flutter/material.dart';

class Register extends StatefulWidget {

  
  @override
  _RegisterState createState() => _RegisterState();

}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String _usr, _pwd, _repwd, _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text('Register',style: TextStyle(fontFamily:'Omyim',fontSize: 50)),
      ),backgroundColor: Colors.yellow[100],
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            Image.asset('images/logo.png', width: 100, height: 100),
            SizedBox(height: 20),
            txtUsr(),
            txtPwd(),
            txtRePwd(),
            txtEmail(),
            btnReg(),
          ],
        ),
      ),
    );
  }
  Widget txtUsr() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            width: 250,
            child: TextField(
              onChanged: (String str) {
                _usr = str;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow.shade50,
                prefixIcon: Icon(Icons.person, color: Colors.yellow.shade900),
                labelStyle: TextStyle(color: Colors.yellow.shade900,fontFamily:'Omyim',fontSize: 25),
                labelText: 'Username : ',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
              ),
            ),
          ),
        ],
      );
  Widget txtPwd() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            width: 250,
            child: TextField(
              onChanged: (String str) {
                _pwd = str;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow.shade50,
                prefixIcon: Icon(Icons.person, color: Colors.yellow.shade900),
                labelStyle: TextStyle(color: Colors.yellow.shade900,fontFamily:'Omyim',fontSize: 25),
                labelText: 'Password : ',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
              ),
            ),
          ),
        ],
      );

  Widget txtRePwd() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            width: 250,
            child: TextField(
              onChanged: (String str) {
                _repwd = str;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow.shade50,
                prefixIcon: Icon(Icons.person, color: Colors.yellow.shade900),
                labelStyle: TextStyle(color: Colors.yellow.shade900,fontFamily:'Omyim',fontSize: 25),
                labelText: 'Re - Password : ',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
              ),
            ),
          ),
        ],
      );

  Widget txtEmail() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            width: 250,
            child: TextField(
              onChanged: (String str) {
                _email = str;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow.shade50,
                prefixIcon: Icon(Icons.person, color: Colors.yellow.shade900),
                labelStyle: TextStyle(color: Colors.yellow.shade900,fontFamily:'Omyim',fontSize: 25),
                labelText: 'E-mail : ',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
              ),
            ),
          ),
        ],
      );

  Widget btnReg() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250,
            child: RaisedButton(
              color: Colors.yellow.shade700,
              onPressed: () {
                print("info : $_usr , $_pwd , $_repwd , $_email");
              },
              child: Text(
                'Register',
                style: TextStyle(fontFamily:'Omyim',fontSize: 30,color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      );
}
