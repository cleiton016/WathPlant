import 'package:app_estagio/models/resultados_model.dart';
import 'package:app_estagio/pages/loanding/loanding.dart';
import 'package:app_estagio/pages/more_results/widgets/list_results.dart';
import 'package:flutter/material.dart';


class MoreResults extends StatelessWidget {
  final resultados;
  const MoreResults(this.resultados, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultados possiveis")),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          var resultado = this.resultados[index];
          return _construirCard(Resultados.fromJson(resultado));
        },
        itemCount: this.resultados ==null? 0: this.resultados.length,
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _construirCard(item) {
    return Container(
      width: 50, height: 120,
      child: Card(
        color: Colors.teal[400],
        elevation: 1.5,
        margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            Text(item.nome),
            Text(item.nomeCientifico),
            Text(item.acertividade)
          ],
        ),
      )
    );
  }
}