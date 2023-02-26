import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _Home();
  }

}
class _Home extends State<HomePage>{
  final List icons= [Icons.airplanemode_active,
  Icons.business,
  Icons.photo,
  Icons.photo_camera,
  Icons.directions_bus ];
  final categorize = [
    'New',
    'Most Vicwed',
    'Most tours',
    'All'
  ];

  final images = [
    'images/1.PNG',
    'images/2.PNG',
        'images/3.PNG',
        'images/4.PNG',
  ];

  final names = [
    'Model',
    'Model2',
    'Model3',
    'Model4'
  ];

  final namelocatio = [
    'New',
    'Most Vicwed',
    'Most tours',
    'All'
  ];

  @override
  Widget build(BuildContext context) {

   return
     MaterialApp(
       title: "Online Shopping",
         home: Scaffold(
       appBar: AppBar(
         title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [
             Container(
               height: 50,
               width: 60,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   image: DecorationImage(image: AssetImage('images/girl.jpg'),
                     fit: BoxFit.cover,
                   )
               ),
             ),
             Icon(
               Icons.more_vert,
               size: 35,
               color: Colors.white,
             ),
           ],
         ),

       ),
       body: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[

             Padding(
               padding: const EdgeInsets.only(left: 20,top: 40),
               child: Text("Welcome to Our\n Online Shoping Mall",
                 style: TextStyle(
                     fontWeight: FontWeight.bold,
                     height: 1.2,
                     fontSize: 30
                 ),
                 textAlign: TextAlign.start,
               ),
             ),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 20),
               height: 60,
               width: MediaQuery.of(context).size.width * 0.9,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.deepOrangeAccent,
                   boxShadow: [BoxShadow(
                     color: Colors.black54,
                   )
                   ]
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Expanded(
                       child: Container(
                         width: MediaQuery.of(context).size.width * 0.6,
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: "Search",
                             border: InputBorder.none,
                             hintStyle: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold,
                               color: Colors.black26,
                               letterSpacing: 1.2,
                             ),
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Container(
                         margin: EdgeInsets.only(left: 90),
                         height: 30,
                         width: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.deepOrangeAccent,
                         ),
                         child: Icon(Icons.search,color: Colors.white70,
                             size: 25,

                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Container(
                 height: 100,
                 width: MediaQuery.of(context).size.width,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: icons.length,
                     itemBuilder:(BuildContext context, int index){
                     return Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 7),
                       child: Container(
                         margin:EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                         height: 70,
                         width: 70,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.deepOrangeAccent,
                         ),
                         child: Icon(icons[index],
                         size: 30,
                           color: Colors.white,
                         ),
                       ),
                     );
                     },
                 ),
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               height: 30,
               width: MediaQuery.of(context).size.width,
               child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: categorize.length,
                   itemBuilder: (BuildContext contex,int index){
                     return Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 11),
                       child: Text(categorize[index],
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         letterSpacing: 1.0
                       ),
                       ),
                     );
                   },
             ),
             ),
             Expanded(
               child: Container(
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: 3,
                   itemBuilder: (BuildContext contex,int index){
                     return Container(
                       margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                       height: 340,
                       width: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                             image:DecorationImage(
                             image: AssetImage(images[index],),
                             fit:BoxFit.cover,
                             ),
                       ),
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.black.withOpacity(0.6),
                         ),
                         child: Stack(
                           children: <Widget>[
                             Container(),
                             Positioned(
                               bottom: 40,
                               left: 10,
                               child: Text(names[index],
                               style: TextStyle(
                               color: Colors.white,
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                               ),
                               ),
                             ),
                             Positioned(
                               bottom: 10,
                               child: Row(
                                 children: <Widget>[
                                   Icon(Icons.local_mall,
                                   color: Colors.deepOrangeAccent,
                                   ),
                                   SizedBox(
                                     width: 3,
                                   ),
                                   Text(namelocatio[index],
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white30,
                                   ),
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ),
                     );
                   },
                 ),
               ),
             ),
           ],
         ),
       ),
   ),
     );
  }
}