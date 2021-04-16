import 'package:app_estagio/variaveis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).padding.top *4),
        Container(
          height: 150,
          child: Column(
            children: [
              Image.asset(
                    'asset/icons/logo.png',
                    height: 60,
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    varNomeApp,//Nome do app
                    style: GoogleFonts.lobster(fontSize: 40)
                  )
                ],
              ),
            ],
          ),
          
        )
      ],
    );
  }
}