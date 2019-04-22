import 'package:flutter/material.dart';

class TabletasTabs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:new Text('Registro Cliente'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.save),
          onPressed: (){}   //para crear funcion es dentro delos corchetes
          )
        ],
      ),
      body:new Column(
        children:<Widget>[
          new ListTile(
              leading: const Icon(Icons.person),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Nombre",

                ),
              ),
          ),
          new ListTile(
              leading: const Icon(Icons.phone),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Telefono",
                  
                ),
              ),
          ),
          new ListTile(
              leading: const Icon(Icons.email),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Correo",
                  
                ),
              ),
          ),
          const Divider(
            height: 1.0,
          ),
          new ListTile(
              leading: const Icon(Icons.today),
              title: new Text('Cumpleaños'),
              subtitle: const Text('Marzo 17 de 2019'),
          ),
          new ListTile(
              leading: const Icon(Icons.group),
              title: new Text('Grupo Fluter'),
              subtitle: new Text('Fluterrr...'),
              
          ),
        ],
      ),
    );
  }

}