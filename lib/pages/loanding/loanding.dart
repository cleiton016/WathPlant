import 'package:app_estagio/pages/show_Info/show_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      color: Colors.greenAccent,
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
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => ShowInfo(this.imgPath))
    ));
  }
}