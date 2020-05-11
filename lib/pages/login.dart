import 'package:flutter/material.dart';
import 'package:appcat/utility/validate.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

String _password;

bool passwordVisible = false;

class _LogInState extends State<LogIn> {
  @override
  bool _validate = false;
  bool _obcureText = true;

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow.shade100,
      // appBar: AppBar(
      //   elevation: 0.2,
      //   backgroundColor: Colors.yellow.shade700,
      //   title: Text(
      //     'Log In',
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.person,size: 100,) ,
                space(),
                userForm(),
                space(),
                pwdForm(),
                btnLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget btnLogin() => Container(
        width: 250,
        child: RaisedButton(
          onPressed: () {},
          color: Colors.yellow.shade700,
          child: Text(
            'Log In',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
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
      );

  Widget pwdForm() => Container(
        width: 250,
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: false,
              obscureText: _obcureText,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow.shade50,
                prefixIcon: Icon(Icons.lock, color: Colors.yellow.shade900),
                labelStyle: TextStyle(color: Colors.yellow.shade900),
                labelText: 'Password : ',
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
            Container(alignment: Alignment.topRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Colors.blue.shade300,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ),
            )
          ],
        ),
      );
}