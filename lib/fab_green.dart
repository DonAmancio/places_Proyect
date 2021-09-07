import 'package:flutter/material.dart';
//floating action button
class FabGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return  _FabGreen();
  }

}

class _FabGreen extends State<FabGreen> {

  var _fabIcon= Icons.favorite_border;

  void onPressedfav(){
    //setState () actualiza el estado del widget
    setState(() {
      if(_fabIcon == Icons.favorite_border){
        _fabIcon = Icons.favorite;
      }else{

        _fabIcon = Icons.favorite_border;
      }
    });
  }
  @override
  Widget build(BuildContext context){
    final fabGreen= FloatingActionButton(
      backgroundColor: Color(0xff16db58),
      mini: true,
      tooltip: "fab",
      child: Icon(
            _fabIcon
      ),
        onPressed: onPressedfav,
    );
    return fabGreen;
  }

}