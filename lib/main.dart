import 'package:app_estagio/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "WhatPlant",
        theme: ThemeData(
          primaryColor: Colors.teal[400],
          primarySwatch: Colors.green,
          brightness: Brightness.dark
        ),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
    );
  }
}
