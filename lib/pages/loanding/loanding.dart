import 'dart:convert';
import 'package:app_estagio/models/resultados_model.dart';
import 'package:app_estagio/pages/show_Info/show_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

class Loanding extends StatefulWidget {
  final path;
  const Loanding(this.path, {Key key}) : super(key: key);

  @override
  _LoandingState createState() => _LoandingState(this.path);
}

class _LoandingState extends State<Loanding> {
  final imgPath;
  _LoandingState(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[400],
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SpinKitDualRing(
          color: Colors.white,
          size: 90,
        )
      ),
    );
  }

  @override
  void initState(){

    super.initState();

    getresult("https://api-example-cnn.herokuapp.com/muricir").then((value) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => ShowInfo(value))
    ));
  }

  getresult(url) async{
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as List<dynamic>;
      // for (var prop in jsonResponse) { 
      //   print(Resultados.fromJson(prop).nome); 
      // } 
      return jsonResponse;
    } else {
      return response.statusCode;
    }
  }
}