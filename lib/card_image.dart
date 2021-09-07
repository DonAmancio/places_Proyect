import 'package:flutter/material.dart';
import 'package:places_proyecto/fab_green.dart';

class CardImage extends StatelessWidget{

  String path;

  CardImage(this.path);
  @override
  Widget build(BuildContext context) {
    //cardImage
    final card = Padding(
      padding: EdgeInsets.only(
        top: 100,
        right: 15 ,
        bottom: 30,
      ),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    path,
                  ),
                  fit: BoxFit.cover
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 15,
                  offset: Offset(0,10) ,
                )
              ]
          ),
        ),
    );

    //stack
    final cardImage= Stack(
      alignment: Alignment(0.7 , 0.95),
      children:<Widget> [
        card,
        FabGreen()
      ],
    );
    return cardImage;
  }


}