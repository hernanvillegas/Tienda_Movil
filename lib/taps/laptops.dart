import 'package:flutter/material.dart';

class InicioTabs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: new Stack(
        children: <Widget>[
          //agregamos una imagen
          new Container(
            margin: const EdgeInsets.all(10.0), //margenes por todos lados
            width: 350.0, //ancho de la img
            height: 350.0, //largo de la img
            decoration: new BoxDecoration(
              image: new DecorationImage(image:new AssetImage("assets/images/img.jpg"),
              fit: BoxFit.cover
              ),
            ),
          ),
          //agregamos un boton con alguna accion
          new Container(
            margin: const EdgeInsets.only(top: 390.0, left: 25.0),
            child: new RaisedButton(
              padding: const EdgeInsets.only(top: 20, left:100, right: 100, bottom: 20),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: (){ //click del boton cuando lo presionamos
                Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text('Hola mundo'))
                );
              },
              child: new Text("Presiona Aqui"),
            ),
          ),
        ],
      ),
    );
  }

}