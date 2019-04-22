import 'package:flutter/material.dart';

class NosotrosTabs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
     appBar: new AppBar(
       title: new Text('Sobre Nosotros...'),
       
     ),
     
body: new Stack(
        children: <Widget>[
          //agregamos una imagen
          new Container(
            margin: const EdgeInsets.all(10.0), //margenes por todos lados
            width: 350.0, //ancho de la img
            height: 350.0, //largo de la img
            child: new Text(''),
            decoration: new BoxDecoration(
              image: new DecorationImage(image:new AssetImage("assets/images/img.jpg"),
              fit: BoxFit.cover
              
              ),
            ),
          ),
         
        ],
      ),

    );
  }

}


