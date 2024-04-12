import 'package:blazer/view/cart.dart';
import 'package:blazer/view/catogery.dart';
import 'package:blazer/view/favourite.dart';
import 'package:flutter/material.dart';
import 'view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     scaffoldBackgroundColor: Colors.white,
      
      ),
      home: Home(),
    );
  }
}


