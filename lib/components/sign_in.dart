import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Sign In",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.cyan.shade400),
      backgroundColor: Colors.cyan.shade50,
      body: Align(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(100, 0, 100, 40),
                child: TextField(
                    decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Email',
                ))),
            Padding(
                padding: EdgeInsets.fromLTRB(100, 0, 100, 50),
                child: TextField(
                    decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: 'Password',
                ))),
            Container(
                margin: const EdgeInsets.only(top: 25),
                child: FlatButton(
                  child: Text('Confirm',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  color: Colors.cyan,
                  onPressed: () {},
                )),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Don't have any account yet ?",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold)),
                SizedBox(width: 70),
                Container(
                    child: FlatButton(
                        child: Text('Create an account',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        color: Colors.green.shade300,
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/sign_up')})),
              ],
            )
          ])),
    );
  }
}
