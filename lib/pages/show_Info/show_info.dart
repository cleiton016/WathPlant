import 'dart:convert';
import 'dart:io';
import 'package:app_estagio/models/resultados_model.dart';
import 'package:app_estagio/pages/show_Info/widgets/barra_cabecalho.dart';
import 'package:flutter/material.dart';

class ShowInfo extends StatelessWidget {
  final resultJSON;
  const ShowInfo(this.resultJSON, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final melhorResultado = Resultados.fromJson(resultJSON[0]);

    return Scaffold(
      backgroundColor: Colors.white,
      
      //appBar: AppBar(),
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BarraCabecalho("Melhor Resultado",resultJSON),
                Text('Nome Científico: ' + melhorResultado.nomeCientifico, style: TextStyle(color: Colors.black54, fontSize: 16),),
                Text('Nome Popular: ' + melhorResultado.nome, style: TextStyle(color: Colors.black54, fontSize: 16),),
                SizedBox(height: 50,),
                Center(child: Row(children: [
                  Image.network('https://api-example-cnn.herokuapp.com/uploads/muricir/muricir-fruto.jpg', height: 100, width: 100),
                  SizedBox(width: 25,),
                  Image.network('https://api-example-cnn.herokuapp.com/uploads/muricir/muricir-fruto.jpg', height: 100, width: 100),
                  SizedBox(width: 25,),
                  Image.network('https://api-example-cnn.herokuapp.com/uploads/muricir/muricir-fruto.jpg', height: 100, width: 100),
                ],))
                
              ],
            )
          ],
        ),
      ),
    );

    
  }

  Widget _listImag(list){
    var lr = list();
    for (var item in list){
      Image.network(item, height: 100, width: 100);
    }
  }
}