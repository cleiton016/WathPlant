import 'dart:io';

import 'package:flutter/material.dart';

class Show_info extends StatelessWidget {
  final imgPath;
  const Show_info(this.imgPath, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Center(
        child: Stack(
          children: <Widget>[
            RaisedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text('Retornar !'),
            ),
            Image.file(File(imgPath))
          ],
        ),
      ),
    );
 }
}