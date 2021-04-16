import 'package:app_estagio/cores.dart';
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
          color: corPrincipal,
          height: 130,
          width: MediaQuery.of(context).size.width,   
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top *2.5),
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