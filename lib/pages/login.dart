import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:appcat/utility/validate.dart';
import 'package:http/http.dart';
import 'register.dart';
import 'forgot_pwd.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

bool passwordVisible = false;

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  @override
  bool _validateUsr = false;
  bool _validatePwd = false;
  bool _obcureText = true;

  String _username;
  String _password;

  final _textUsr = TextEditingController();
  final _textPwd = TextEditingController();

  @override
  void dispose() {
    _textUsr.dispose();
    _textPwd.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text(
          'Log In',style: TextStyle(fontFamily:'Omyim',fontSize: 50)),
      ),
      body: Container(
        child: Center(
          child: Container(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      "images/logo.png",
                      width: 250,
                      height: 250,
                    ),
                    new Text(
                      "แมวอ้วนเตรียมสอบ",
                      style: TextStyle(
                        fontFamily:'Omyim',
                        color: Colors.yellow.shade900,
                        fontSize: 50,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Icon(Icons.person,size: 100,) ,
                    space(),
                    userForm(),
                    space(),
                    pwdForm(),
                    btnLogin(), btnRegister(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  FlatButton btnRegister() => FlatButton.icon(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Register()));
      },
      icon: Icon(Icons.person_add, color: Colors.yellow.shade700),
      label: Text(
        'Register',
        style: TextStyle(fontFamily:'Omyim',fontSize: 30, color: Colors.black38),
      ));

  Widget btnLogin() => Container(
        width: 250,
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _textUsr.text.isEmpty
                  ? _validateUsr = true
                  : _validateUsr = false;
              _textPwd.text.isEmpty
                  ? _validatePwd = true
                  : _validatePwd = false;
            }
            
            );
            print("username: $_username");
            print("password: $_password");
          },
          color: Colors.yellow.shade700,
          child: Text(
            'Log In',
            style: TextStyle(
              fontFamily:'Omyim',
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ),
      );

  SizedBox space() => SizedBox(
        width: 2,
        height: 8,
      );

  Widget userForm() => Container(
        width: 250,
        child: TextField(
          controller: _textUsr,
          onChanged: (String str) {
            _username = str;
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.yellow.shade50,
            prefixIcon: Icon(Icons.person, color: Colors.yellow.shade900),
            labelStyle: TextStyle(fontFamily:'Omyim',fontSize: 25,color: Colors.yellow.shade900),
            labelText: 'Username : ',
            errorText: _validateUsr ? 'Please Enter Username !! ' : null,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow.shade700)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow.shade700)),
          ),
        ),
      );

  Widget pwdForm() => Container(
        width: 250,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _textPwd,
              onChanged: (String str) {
                _password = str;
              },
              autofocus: false,
              obscureText: _obcureText,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow.shade50,
                prefixIcon: Icon(Icons.lock, color: Colors.yellow.shade900),
                labelStyle: TextStyle(fontFamily:'Omyim',fontSize: 25,color: Colors.yellow.shade900),
                labelText: 'Password : ',
                errorText: _validatePwd ? 'Please Enter Password !! ' : null,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade700)),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obcureText = !_obcureText;
                    });
                  },
                  child: Icon(
                    _obcureText ? Icons.visibility : Icons.visibility_off,
                    semanticLabel:
                        _obcureText ? 'show password' : 'hide password',
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPwd()));
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontFamily:'Omyim',
                      color: Colors.blue.shade300,
                      fontSize: 20,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        ),
      );

  String validatePwd(String value) {
    if (!(value.length > 5) && value.isNotEmpty) {
      return " Password should contains more then 5 character ";
    }
    return null;
  }
}
