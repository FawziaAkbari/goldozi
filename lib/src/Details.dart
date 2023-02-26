import 'package:flutter/material.dart';
import 'package:goldozi/src/models.dart';


class Details extends StatelessWidget {
  final Model model;
  Details(this.model);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
      child:Stack(
        children:<Widget>[
          Column(
            children:<Widget>[
              Container(
                width: double.infinity,
                height:500,
                child:ClipRRect(
                  borderRadius:BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
                  child:Image.asset(
                    'images/${model.image}',
                    height:600,
                    width: double.infinity,
                    fit:BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.all(14.0),
                child:Row(
                  children:<Widget>[
                   // Icon(Icons.home, color:Colors.black87, size:25,),
                    SizedBox(height: 5),
                    Text('${model.model} Model', style:TextStyle(color:Colors.black87, fontSize:25, fontWeight: FontWeight.bold,)),
                  ],
                ),
              ),
             Align(
               alignment:Alignment.bottomCenter,
               child:Container(
                 height: 80,
                 decoration:BoxDecoration(
                   borderRadius:BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                   color:Colors.purple[300],
                 ),
                 child:Row(
                   mainAxisAlignment:MainAxisAlignment.spaceBetween,
                   children:<Widget>[
                     Padding(
                       padding:EdgeInsets.only(left:10),
                       child:RichText(
                         text:TextSpan(
                           children:[
                             TextSpan(text:'Price\n', style:TextStyle(fontSize:18)),
                             TextSpan(text: '\$300', style:TextStyle(fontSize:26, fontWeight:FontWeight.bold,)),
                           ],
                         ),
                       ),
                     ),
                     Padding(
                       padding:EdgeInsets.only(right:10.0),
                       child:Container(
                         decoration:BoxDecoration(
                           color:Colors.white,
                           borderRadius:BorderRadius.circular(10),
                           boxShadow:[
                             BoxShadow(
                               color:Colors.black87,
                               blurRadius: 8,
                               offset:Offset(1,1),
                             ),
                           ],
                         ),
                         child:Padding(
                           padding:EdgeInsets.all(8.0),
                           child:Text('Buy', style:TextStyle(color:Colors.purple, fontSize:20,)),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
            ],
          ),
          Positioned(
            top:20,
            left:10,
            child: GestureDetector(
              onTap:(){
                Navigator.pop(context);
              },
              child:Align(
                alignment:Alignment.topLeft,
                child:Icon(Icons.arrow_back_ios, color:Colors.purple,),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
