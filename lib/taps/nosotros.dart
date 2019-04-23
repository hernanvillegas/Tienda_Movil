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
            width: 400.0, //ancho de la img
            height: 300.0, //largo de la img
            child: new Text('Hernan Luis Villegas Llanco \n\n\nEste proyecto fue realizado para la compra y venta de dispositivos moviles y asi ayudar a varias personas a vender y/o  comprar lo que necesitemos'),
            decoration: new BoxDecoration(
              image: new DecorationImage(image:new AssetImage("assets/images/menu.jpg"),
              fit: BoxFit.cover
              
              ),
            ),
          ),
         
        ],
        
      ),

    );
  }

}


