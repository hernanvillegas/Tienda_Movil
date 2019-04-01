import 'package:flutter/material.dart';
import 'package:tienda_movil/screens/home/widgets/list_room.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue, //black87,
        child: ListCardRoom(),
    );
  }
}
