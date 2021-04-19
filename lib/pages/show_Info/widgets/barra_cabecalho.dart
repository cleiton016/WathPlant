import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarraCabecalho extends StatelessWidget {
  final nomePlanta;
  const BarraCabecalho(this.nomePlanta, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.teal[400],
          height: 130,
          width: MediaQuery.of(context).size.width,   
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top *2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(this.nomePlanta, style: TextStyle(fontSize: 30, fontFamily: "CourierPrime"))
                ],
              ),
              //SizedBox(height: 5,),
              InkWell(
                      onTap: () => {Navigator.pop(context)},
                      child: Icon(Icons.expand_more)
                    ),
            ],
          )
        ),
        
        
      ],
    );

  }
}