import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Sign up",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
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
                    icon: Icon(Icons.person),
                    hintText: 'Username',
                  ))),
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
                    child: Text('Register',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    color: Colors.cyan,
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/all_tasks')},
                  )),
              SizedBox(height: 100),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already have an account ?",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold)),
                    SizedBox(width: 70),
                    Container(
                        child: FlatButton(
                            child: Text('Sign In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            color: Colors.green.shade400,
                            onPressed: () =>
                                {Navigator.pushNamed(context, '/sign_in')})),
                  ])
            ])));
  }
}
