import 'dart:io';
import 'package:app_estagio/pages/show_Info/widgets/barra_cabecalho.dart';
import 'package:flutter/material.dart';

class Show_info extends StatelessWidget {
  final imgPath;
  const Show_info(this.imgPath, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      //appBar: AppBar(),
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BarraCabecalho("Melhor Resultado"),
                
                Text("Nome Científico: Byrsonima crassifolia", style: TextStyle(color: Colors.black54, fontSize: 16),),
                Text("Nome Popular: Muricir", style: TextStyle(color: Colors.black54, fontSize: 16),),
                Image.file(File(this.imgPath)),
              ],
            )
          ],
        ),
      ),
    );
 }
}