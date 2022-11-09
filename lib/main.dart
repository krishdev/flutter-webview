import 'package:flutter/material.dart';
import 'package:insubuy_myaccount/myaccount_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iframe Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyaccountHome(),
    );
  }
}
