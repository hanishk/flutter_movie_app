import 'package:flutter/material.dart';
import 'signup.dart';

class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign In',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            FlutterLogo(
              size: 100.0,
            ),
            Center(
                child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.0),
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email-id',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0))),
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
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
              color: Colors.blue,
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text("Not yet Registered? Sign Up"))),
          ],
        ),
      ),
    );
  }
}
