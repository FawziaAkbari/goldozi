import 'package:flutter/material.dart';
import 'package:goldozi/screens/account.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:goldozi/src/Welcome.dart';


void main(){
  runApp(SignIn());
}
class SignIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _Sign();
  }
}
class _Sign extends State<SignIn>{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


      Future yourAccount() async {
        var url = 'http://192.168.43.30/login.php';
        var response = await http.post(url, body: {
          "email": email.text,
          "password": password.text,
        });

        var data = json.decode(response.body);
        if (data == "success") {
          Fluttertoast.showToast(
              msg: "Login Success",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
          );
          Navigator.push(context,MaterialPageRoute( builder:(context) {
            return Welcome();
          }));
        } else if(data == "error") {
          Fluttertoast.showToast(
              msg: "Email or Password Incorrect!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
          Navigator.pop(context,MaterialPageRoute( builder:(context) {
            return SignIn();
          }));

        }
      }
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: (){
          moveToLastScreen();

      },

      child: Scaffold(

          body: Container(
            decoration:BoxDecoration(
              image: DecorationImage(image: AssetImage("images/26.jpg"),
                  fit: BoxFit.cover
              ),
            ),
                child: Container(
                  color: Colors.black26,
                     child: ListView(
                       children: <Widget>[
                         Container(
                           margin: EdgeInsets.all(60.0),
                           child: Text("Welcome dear\n customer",
                             style: TextStyle(
                             fontWeight: FontWeight.bold,
                              height: 1.2,
                                 color: Colors.white,
                                fontSize: 30
                                 ),
                                     textAlign: TextAlign.center,
                                   ),
                                  ),
                         Expanded(
                           child: Container(
                             width: MediaQuery.of(context).size.width/1.1,
                             height: 60,
                             padding:EdgeInsets.only(top: 23,left: 16,right: 25,bottom: 4),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(38)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.purple,
                                   blurRadius: 10,
                                 )
                               ]
                             ),
                             child: TextField(
                               controller: email,
                               decoration: InputDecoration(
                                 icon: Icon(Icons.email,
                                 color: Colors.grey,
                                 ),
                                 hintText: 'Email'
                               ),
                             ),
                           ),
                         ),

                         Expanded(
                           child: Container(
                             width: MediaQuery.of(context).size.width/1.1,
                             height: 60,
                             margin: EdgeInsets.only(top: 16),
                             padding:EdgeInsets.only(top: 23,left: 16,right: 25,bottom: 4),
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(38)),
                                 color: Colors.white,
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.purple,
                                     blurRadius: 10,
                                   )
                                 ]
                             ),
                             child: TextField(
                               controller: password,
                               decoration: InputDecoration(
                                   icon: Icon(Icons.vpn_key,
                                     color: Colors.grey,
                                   ),
                                   hintText: 'Password'
                               ),
                             ),
                           ),
                         ),

                             Expanded(
                               child: Align(
                                 alignment: Alignment.centerRight,
                                 child: Padding(
                                   padding: const EdgeInsets.only(top:30,right: 25),
                                   child: Text('Forgot Password?',
                                     style: TextStyle(color: Colors.black54,
                                     fontWeight: FontWeight.bold
                                     ),
                                   ),
                                 ),
                               ),
                             ),

                         SizedBox(
                           height: 20.0,

                         ),
                         Expanded(
                           child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 height: 50,

                                 child: RaisedButton(
                                     shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(30.0)
                                     ),
                                     color: Color(0xFF8E24AA),
                                         child: Text(
                                           'Sing In',style: TextStyle(
                                           color: Colors.black,
                                           fontWeight: FontWeight.bold,
                                           fontSize: 20.0,
                                         ),),
                                         onPressed: (){
                                           Navigator.push(context,MaterialPageRoute( builder:(context) {
                                             return Welcome();
                                           }));
                                       yourAccount();
                                       reset();
                                         }
                                     ),
                               ),

                                   ),
                         ),

                         Expanded(
                           child: Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Container(
                               height: 50,
                               child: RaisedButton(
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(30.0)
                                   ),
                                   color: Color(0xFF8E24AA),
                                   child: Text('Reset',style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20.0,
                                   ),),
                                   onPressed: (){
                                     reset();
                                   }
                               ),
                             ),

                           ),
                         ),

                         Expanded(
                           child: Container(
                             child: GestureDetector(
                               onTap: (){
                                 Navigator.push(context,MaterialPageRoute( builder:(_)=>CreateAccount(),
                                 ),
                                 );
                               },
                               child: Container(
                                   margin: EdgeInsets.symmetric(horizontal: 50,vertical: 67.0),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(25),
                                   color: Color(0xFF7B1FA2),
                                 ),
                                 height: 40,
                                 width: MediaQuery.of(context).size.width/1.7,
                                 child: Center(
                                   child: Text("Create Account",
                                     style: TextStyle(
                                         fontSize: 15,
                                         color: Colors.black,
                                         fontWeight: FontWeight.bold
                                     ),
                                   ),
                                 ),
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
  void reset(){
    email.text = '';
    password.text = '';

  }
  void moveToLastScreen(){
    Navigator.pop(context);
  }



}
