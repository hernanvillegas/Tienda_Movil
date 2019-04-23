import 'package:flutter/material.dart';
import 'package:image_carousel_app/widgets/carousel_pro.dart';

void main() => runApp(new ProductosTabs());

class ProductosTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Carousel',
      home: ImageCarousel(),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  _ImageCarouselState createState() => new _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/images/lap1.jpg'),
        new AssetImage('assets/images/cel1.jpg'),
        new AssetImage('assets/images/cam1.jpg'),
        new AssetImage('assets/images/tabl1.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );

    Widget banner = new Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
        child: new Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0)),
            color: Colors.amber.withOpacity(0.5),
          ),
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            'Productos en Oferta',
            style: TextStyle(
             // fontFamily: 'fira',
              fontSize: animation.value,//18.0,
              //color: Colors.white,
            ),
          ),
        ),
      // ),
    //  ),
    );

    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Center(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          height: screenHeight / 2,
          child: new ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: new Stack(
              children: [
                carousel,
                banner,
              ],
            ),
          ),
        ),
      ),
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}



/* import 'package:flutter/material.dart';
import 'package:tienda_movil/widgets/carousel_pro.dart';


class ProductosTabs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      title:'Productos',
      home: HomePage(),
    );
  }

}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: ImageCarousel(),
    );
  }

}
class ImageCarousel extends StatelessWidget{
  final carousel=Carousel(
    
      boxFit: BoxFit.cover,
      images:[
        AssetImage('assets/images/menu.jpg'),
        AssetImage('assets/images/lab1.jpg'),
        AssetImage('assets/images/mlab2.jpg'),
        AssetImage('assets/images/lab3.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration:Duration(milliseconds: 2000),
      );

      
      

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    return Center(
      child: new Container(
        padding:EdgeInsets.all(20.0), 
        height:screenHeight / 2,     
      child:new ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
      
      child: new Stack(
        children: <Widget>[
          carousel,
        Banner(),
        ],
      ),
      ),
    ),
    );
  }
}
class Banner extends StatefulWidget{
  @override
  _BannerState createState() => new _BannerState();
}
 class _BannerState extends State<Banner> with SingleTickerProviderStateMixin{
AnimationController controller;
Animation<double> animation;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller= AnimationController(
    duration: Duration(milliseconds: 2000),
    vsync: this,
    );
  }
  animation = Tween (begin: 0.0, end:18.0).animate(controller)
  ..addListener((){
    setState((){});
  });
  controller.forward()
 }
   final banner =new Padding(
        padding: const EdgeInsets.only(top:20.0, left: 20.0),
        child: new Container(
        decoration: BoxDecoration(
            color: Colors.amber.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
              ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Text('Venta de disp. Electronicos', style: TextStyle(
          //fontFamily: '',
          fontSize: animation.value,
        ),
        ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    
    return banner;
  }

 }
 */