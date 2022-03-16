import 'package:ciofroum/Homepage.dart';
import 'package:ciofroum/footer_view.dart';
import 'package:ciofroum/header_view.dart';
import 'package:ciofroum/screen/Home.dart';
import 'package:ciofroum/screen/products.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      themeMode: ThemeMode.light,
      home: HomeScreen(),

    );
  }
}
