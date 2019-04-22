/* import 'package:flutter/material.dart';
import 'package:tienda_movil/widgets/custom_text.dart';
import 'package:tienda_movil/widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  Color mPurpleColor = Color(0xFF6200ea);

  @override
  Widget build(BuildContext context) {
    final mVerticalList = Container(
      height: 240.0,
      margin: EdgeInsets.only(bottom: 10.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CustomCard.vertical(2, "Computadoras", "assets/images/img1.jpg",Icon(Icons.account_balance_wallet), mPurpleColor ),
          CustomCard.vertical(3, "Laptops", "assets/images/img2.jpeg",Icon(Icons.airline_seat_recline_extra), Color(0xFF0091ea) ),
          CustomCard.vertical(4, "CPU", "assets/images/img3.jpg",Icon(Icons.accessible_forward),Color(0xFF00bfa5)),
          CustomCard.vertical(5, "Audifonos", "assets/images/img4.jpg",Icon(Icons.account_balance_wallet), mPurpleColor ),
          CustomCard.vertical(6, "Celulares", "assets/images/img5.jpg",Icon(Icons.airline_seat_recline_extra), Color(0xFF0091ea) ),
          CustomCard.vertical(7, "Tabletas", "assets/images/img.jpg",Icon(Icons.accessible_forward),Color(0xFF00bfa5)),
         
        ],
      ),
    );

    return Container(
      
      color: Colors.black,
      child: ListView(
        children: <Widget>[
          CustomText.margin("Villegas Hernan", Colors.white30, 18.0, 20.0, 0.0, 20.0, 10.0),
          CustomText.margin("Venta de Dispositivos Electronicos", Colors.white, 24.0, 20.0, 0.0, 0.0, 30.0),
          //CustomCard(1, "Achilles Heel", "assets/bones_1.jpg",Icon(Icons.account_balance_wallet), ),

          CustomCard(1,"Computadoras", "assets/images/pc1.jpg",Icon(Icons.account_balance_wallet), ),
          CustomCard(2,"Laptops", "assets/images/pc2.jpeg",Icon(Icons.airline_seat_recline_extra), ),
          CustomCard(3,"CPU", "assets/images/pc3.jpg",Icon(Icons.accessible_forward),  ),

          CustomText.margin("Dispositivos en venta:", Colors.blueGrey[50] , 20.0, 20.0, 0.0, 20.0, 30.0),
         // CustomText.margin("Dispositivos en venta:", Colors.blueGrey, 40.0, 40.0, 0.0, 20.0, 30.0),
          
          mVerticalList
        ],
      ),
    );
  }
}
