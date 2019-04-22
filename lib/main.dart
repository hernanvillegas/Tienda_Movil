import 'package:flutter/material.dart';
import 'package:tienda_movil/taps/audifonos.dart';
import 'package:tienda_movil/taps/celulares.dart';
import 'package:tienda_movil/taps/laptops.dart';
import 'package:tienda_movil/taps/tabletas.dart';
//import 'package:tienda_movil/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    final TabController=new DefaultTabController(
        length: 4, // numero de iconos
        child: new Scaffold(
        appBar:new AppBar(
            title: new Text('TIENDA MOVIL'),
            bottom: new TabBar(indicatorColor: Colors.red, tabs: <Widget>[
                  new Tab(icon: new Icon(Icons.home), text: "Inicio",),
                  new Tab(icon: new Icon(Icons.contacts), text: "Productos",),
                  new Tab(icon: new Icon(Icons.place), text: "Registro",),
                  new Tab(icon: new Icon(Icons.help), text: "Acerca de",)
            ]),
        ),
        body: new TabBarView(
          children: <Widget>[
            new InicioTabs(),
            new CelularesTabs(),
            new TabletasTabs(),
            new AudifonosTabs(),
          ],
        ),
      ),
    );
    var materialApp = new MaterialApp(
      title: 'Villegas',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:TabController,
    );
    return materialApp;
  }
}


   