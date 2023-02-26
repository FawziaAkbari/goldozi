import 'package:flutter/material.dart';
import 'package:goldozi/src/models.dart';
import 'image_card.dart';


class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Model> places=[
    Model(model:'embroidery with \n flower designs', image:'three.jpg' , price:20),
    Model(model:'Handbag', image:'four.jpg' , price:50),
    Model(model:'pottery', image:'five.jpg', price:100),
    Model(model:'earring', image:'six.jpg' , price:90),
    Model(model:"table", image:'seven.jpg' , price:150),
    Model(model:'tissue', image:'nine.jpg' , price:130),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height:260,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        // ignore: missing_return
        itemBuilder: (_, index) {

          return ImageCard(
            model: places[index],
            name: places[index].model,
            price: places[index].price,
            picture:places[index].image,
          );
        },
      ),
    );
  }
}



