import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ListResults extends StatelessWidget {
  final dados;
  const ListResults(this.dados, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.teal[400],
          height: 130,
          width: MediaQuery.of(context).size.width,   
          child: SpinKitRotatingPlain(
            color: Colors.white,
            size: 50,
            
          ),
        ),
        
        
      ],
    );

  }
}