import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
<<<<<<< HEAD

//================================================================== register to database =================================================
  // Boolean variable for CircularProgressIndicator.
  bool visible = false ;

  Future userRegistration() async{
    // Showing CircularProgressIndicator.
    setState(() {
    visible = true ; 
    });

    String username = _usr;
    String email = _email;
    String password = _pwd;

    var url = "https://waterqua.000webhostapp.com/register_user.php";

    var data = {'username': username, 'email': email, 'password' : password};

    var response = await http.post(url, body: json.encode(data));

    // var message = jsonDecode(response.body);

    if(response.statusCode == 200){
    setState(() {
    visible = false; 
    });
  }
  //   showDialog(
  // context: context,
  // builder: (BuildContext context) {
  //   return AlertDialog(
  //     title: new Text(message),
  //     actions: <Widget>[
  //       FlatButton(
  //         child: new Text("OK"),
  //         onPressed: () {
  //           Navigator.of(context).pop();
  //         },
  //       ),
  //     ],
  //   );
  // },
  // );
 //===========================================================================================================================================
}

=======
  final _formKey = GlobalKey<FormState>();
>>>>>>> db6263e4d170fd60fc157669b7913ac2ff813760
  String _usr, _pwd, _repwd, _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text('Register',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left),
      ),backgroundColor: Colors.yellow[300],
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
                labelStyle: TextStyle(color: Colors.yellow.shade900),
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
                labelStyle: TextStyle(color: Colors.yellow.shade900),
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
                labelStyle: TextStyle(color: Colors.yellow.shade900),
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
                labelStyle: TextStyle(color: Colors.yellow.shade900),
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
              onPressed: (){}
              // userRegistration
              ,
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      );
}
