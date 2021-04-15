import 'package:app_estagio/camera/camera.module.dart';
import 'package:flutter/material.dart';

class MyMenuOptions extends StatefulWidget {
  
  const MyMenuOptions({Key key}) : super(key: key);

  @override
  _MyMenuOptionsState createState() => _MyMenuOptionsState();
}

class _MyMenuOptionsState extends State<MyMenuOptions> {
  
  @override
  Widget build(BuildContext context) {
    double _scremsizeH = MediaQuery.of(context).size.height;
    double _scremsizeW = MediaQuery.of(context).size.width;
    
    return Positioned(
      bottom: _scremsizeH /4,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top *2,
          ),
          Container(
            height: 100,
            width: _scremsizeW,
            
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () => {capturarImg("camera", context)},
                      child:Image.asset(
                        'asset/icons/camera.png',
                        height: 100,
                        color: Colors.white,                   
                      ),
                    ),

                    SizedBox(width: _scremsizeW / 8,),

                    InkWell(
                      onTap: () => { capturarImg("galeria", context)},
                      child: Image.asset(
                        'asset/icons/galeria.png',
                        height: 100,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
            
          )
        ],
      )
    );
  }
}