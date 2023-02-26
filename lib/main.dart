import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'package:goldozi/src/Welcome.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   title: 'Goldozi',
debugShowCheckedModeBanner: false,
   home: Login(),
   theme: ThemeData(
       primaryColor: Color(0xFFAA00FF),
       accentColor: Colors.purpleAccent
   ),
 );
  }

}
