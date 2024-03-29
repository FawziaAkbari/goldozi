import 'package:flutter/material.dart';
import 'package:goldozi/src/Details.dart';
import 'package:goldozi/src/models.dart';

class ImageCard extends StatelessWidget {
  final String name;
  final int price;
  final String picture;
  final Model model;

  ImageCard({@required this.name, @required this.price, @required this.picture, this.model});

    @override
    Widget build(BuildContext context) {
    return Padding(
     padding:EdgeInsets.all(4),
     child:InkWell(
       onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context){
           return Details(model);
         }));
       },
        child:Container(
          decoration:BoxDecoration(
            boxShadow:[
              BoxShadow(
                color:
                  Color.fromARGB(62, 168, 174, 201),
                 offset:Offset(0,9),
                 blurRadius:14,
              ),
            ],
          ),
          child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Stack(
              children:<Widget>[
                Image.asset(
                  "images/$picture",
                   height:700,
                   width:200,
                   fit:BoxFit.cover,),
                Align(
                 alignment:Alignment.bottomCenter,
                   child:Container(
                    height:100,
                    width:200,
                    decoration:BoxDecoration(
                    gradient:LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors:[
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.05),
                    Colors.black.withOpacity(0.025),
                     ],
                   ),
                  ),
                    child:Padding(
                        padding:EdgeInsets.only(top:8.0),
                        child:Container(),
                   )),
                ),
                Positioned(
                  bottom:30,
                  left:5,
                  child:Align(
                    alignment:Alignment.bottomLeft,
                    child:Padding(
                      padding:EdgeInsets.only(left:8.0),
                      child:RichText(text:TextSpan(children:[
                        TextSpan(text:'$name', style:TextStyle(fontSize:22)),
                      ]))
                    ),
                  ),
                ),
                Positioned(
                  bottom:10,
                  left:5,
                  child:Align(
                    alignment:Alignment.bottomLeft,
                    child:Padding(
                      padding:EdgeInsets.only(left:8.0),
                      child:Row(
                        children:<Widget>[
                        //  Icon(Icons.details, color:Colors.white, size:14,),
                          SizedBox(height:5),
                          Text('$price price',style:TextStyle(color:Colors.white,)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
