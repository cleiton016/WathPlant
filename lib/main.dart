import 'package:app_estagio/cores.dart';
import 'package:app_estagio/pages/home/home_page.dart';
import 'package:app_estagio/variaveis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: varNomeApp,
        theme: ThemeData(
          primaryColor: corPrincipal,
          primarySwatch: Colors.green,
          brightness: Brightness.dark
        ),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
    );
  }
}
