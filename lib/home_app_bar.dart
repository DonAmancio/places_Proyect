import 'package:flutter/material.dart';
import 'package:places_proyecto/gradient_back.dart';

class HomeAppBar extends StatelessWidget{
  String textoTitulo;
  HomeAppBar(this.textoTitulo);

  @override
  Widget build(BuildContext context) {

    //titulo

    final titulo = Container(
      margin: EdgeInsets.only(
        top: 40,
        left: 30,
      ),
      child: Text(
          textoTitulo,
        style: TextStyle(
          fontFamily: "lato",
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white
        )
      ),
    );


    //appbar
    final appBar = Stack(
      children:<Widget> [
        GradientBack(),
        titulo
      ],
    );
    return appBar;
  }

}