import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Sign up",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.cyan.shade400),
      body: Align(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Text("Username"),
            TextFormField(),
            Text("Email"),
            TextFormField(),
            Text("Password"),
            TextFormField(),
            Container(
                margin: const EdgeInsets.only(top: 25),
                child: FlatButton(
                  child: Text('Register',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  color: Colors.cyan,
                  onPressed: () {},
                ))
          ])),
    );
  }
}
