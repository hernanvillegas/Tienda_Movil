import 'package:flutter/material.dart';
//import 'package:tienda_movil/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    final TabControllerr=new DefaultTabController(
        length: 4, // numero de iconos
        child: new Scaffold(
        appBar:new AppBar(
            title: new Text('TIENDA MOVIL'),
            bottom: new TabBar(indicatorColor: Colors.red, tabs: <Widget>[
                  new Tab(icon: new Icon(Icons.home), text: "LapTops",),
                  new Tab(icon: new Icon(Icons.contacts), text: "Celulares",),
                  new Tab(icon: new Icon(Icons.place), text: "Tabletas",),
                  new Tab(icon: new Icon(Icons.help), text: "Audifonos",)
            ],),
        ),
        body: new TabBarView(
          children: <Widget>[
            new IniciTabs(),
          ],
        ),
      ),
    );
    return new MaterialApp(
      title: 'Villeags Hernan',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabController,
    );
  }
}


   