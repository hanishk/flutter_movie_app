import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            FlutterLogo(
              size: 100.0,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0))),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email-Id',

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0)),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0)),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0)),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0),),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              shape:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => null,
              color: Colors.blue,
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,fontSize: 20.0
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Center(child: GestureDetector(onTap:()=>  Navigator.pop(context),child: Text("Already have an account? Sign In"))),
          ],
        ),
      ),
    );
  }
}
