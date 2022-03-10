import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Sign in",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.cyan.shade400),
      body: Align(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Text("Email"),
            TextFormField(),
            Text("Password"),
            TextFormField(),
            Container(
                margin: const EdgeInsets.only(top: 25),
                child: FlatButton(
                  child: Text('Confirm',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  color: Colors.cyan,
                  onPressed: () {},
                ))
          ])),
    );
  }
}
