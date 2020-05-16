import 'package:flutter/material.dart';

class ForgotPwd extends StatefulWidget {
  @override
  _ForgotPwdState createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text('Forgot Password',
            style: TextStyle(fontFamily: 'Omyim', fontSize: 50)),
      ),
      backgroundColor: Colors.yellow[100],
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Expanded(
                        child: Text(
                          'Email : ',
                          style: TextStyle(fontFamily: 'Omyim', fontSize: 30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 20, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: 'Email',
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 20, left: 20),
                child: Container(
                  child: MaterialButton(
                    onPressed: () {},
                    elevation: 2,
                    color: Colors.yellow[900],
                    child: Text(
                      'Send',
                      style: TextStyle(
                          fontFamily: 'Omyim',
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
