import 'package:flutter/material.dart';
import 'package:fluttermovieapps/sign_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



