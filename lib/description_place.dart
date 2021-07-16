import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  //variables
  String textotitulo;
  int cantidadEstrellas;
  String textoDescripcion;

  DescriptionPlace(this.textotitulo, this.cantidadEstrellas, this.textoDescripcion);

  @override
  Widget build(BuildContext context) {

    final titulo = Container(
      margin: EdgeInsets.only(
          right: 20
      ),
      child: Text(
        textotitulo,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 38,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final estrella = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
    final estrellavacia = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
      ),
    );

    //fila estrellas
    List<Container> estrellas = [];
    for(int i=0; i<5; i++){
      if(i < cantidadEstrellas){
        estrellas.add(estrella);
      }else {
        estrellas.add(estrellavacia);
      }
    }
    final filaestrellas = Row(
      children: estrellas,
    );

    final filatitulo = Row(
      children: <Widget>[
        titulo,
        filaestrellas
      ],
    );

    final descripcion = Container(
      margin: EdgeInsets.only(
          top: 10
      ),
      child: Text(
        textoDescripcion,
        style: TextStyle(
            fontFamily: "Lato",
            color: Colors.black54
        ),
      ),
    );

    final descriptionplace = Column(
      children: <Widget>[
        filatitulo,
        descripcion
      ],
    );

    return descriptionplace;
  }


}