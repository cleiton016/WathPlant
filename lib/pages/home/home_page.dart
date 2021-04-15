import 'package:app_estagio/pages/home/widgets/my_app_bar.dart';
import 'package:app_estagio/pages/home/widgets/my_menu_options.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key key,}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Stack(
        children: <Widget>[
          MyAppBar(),
          MyMenuOptions(),
        ],
      ),
    );
  }
}