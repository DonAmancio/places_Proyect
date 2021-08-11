import 'package:flutter/material.dart';

import 'review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final reviewList = Column(
      children:<Widget> [
        Review("assets/images/persona1.jpg","Don Amancio","1 review - 3 photos",4,"Me gusta el campo."),
        Review("assets/images/persona2.jpg","Maria Eugenia","5 review - 3 photos",2,"Nunca visite el lugar :(."),
        Review("assets/images/persona3.jpg","Valentina","4 review - 31 photos",5,"Lo recomiendo bastante."),
        Review("assets/images/persona4.jpg","Chuck Norris","7 review - 9 photos",3,"Me gustria conocerlo."),
        Review("assets/images/persona5.jpg","Richard Wagner","2 review - 13 photos",4,"Hermoso lugar para visitar."),
      ],
    );

    return reviewList;
  }

}