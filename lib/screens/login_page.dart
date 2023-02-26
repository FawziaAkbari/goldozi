import 'package:flutter/material.dart';
import 'package:goldozi/screens/sing_in.dart';
import 'package:connectivity/connectivity.dart';

class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}
class _Login extends State<Login>{
  final Color minColor = Colors.deepOrangeAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage("images/26.jpg"),
          fit: BoxFit.cover
          ),
        ),
        child: Container(
          color: Colors.black54,
          child: Stack(
            children: <Widget>[
              Container(),
              Positioned(
                bottom: 250,
                child: Container(

                  child: GestureDetector(
                    onTap: (){
               _checkInternetConnectivity();
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 37),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFAB47BC),
                      ),
                      height: 50,
                      width: 350,

                      child: Center(
                        child: Text("Login in",
                        style: TextStyle(
                            fontSize: 25,
                        color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Welcome to Our\n Online Shopping ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            height: 1.2,
                            color: Colors.white,
                            fontSize: 30
                         ),
                       textAlign: TextAlign.center,
                      ),
                    ),
                  ),


            ],
          ),
        ),
      ),
    );
  }

  _checkInternetConnectivity() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none){
      _showDialog('No Internet', "You'er not connect to the internet");
      Login();
    }
    else if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi){
      Navigator.push(context,MaterialPageRoute( builder:(_)=>SignIn(),
      ),
      );
    }
  }

  _showDialog(title,text){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text(title),
          content: Text(text),
          actions: <Widget>[
            FlatButton(
              child: Text("OK" ,style: TextStyle(
                fontWeight: FontWeight.bold
                    ,color: Colors.black
              ),),
              onPressed: (){
                Navigator.pop(context,MaterialPageRoute( builder:(context) {
                  return Login();
                }
                )
                )
                ;
              },
            )
          ],
        );
      }
    );
  }

}