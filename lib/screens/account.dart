import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:goldozi/src/Welcome.dart';

void main(){
  runApp(CreateAccount(),


  );
}
class CreateAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Account();
  }
}
class _Account extends State<CreateAccount>{

  var _formKey =  GlobalKey<FormState>();



  TextEditingController first_name = TextEditingController();
  TextEditingController last_name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();

    Future createAccount() async {
      var url = 'http://192.168.43.30/register.php';
      var response = await http.post(url, body: {
        "first_name": first_name.text,
        "last_name": last_name.text,
        "email": email.text,
        "address": address.text,
        "password": password.text,
        "confirm": confirm.text,
      });

      var data = json.decode(response.body);
      if (data == "error") {
        Fluttertoast.showToast(
            msg: "Sorry this user is \n already registered",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
     else if (data == "pass") {
        Fluttertoast.showToast(
            msg: "You confirm and password \n not match",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }

      else {

        Fluttertoast.showToast(
            msg: "Registration Successful",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
        );
        Navigator.pop(context,MaterialPageRoute( builder:(context) {
          return Welcome();
        }));
      }

  }

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.bodyText1;

    return  WillPopScope(
      onWillPop: (){
        moveToLastScreen();
      },


      child: Scaffold(
          appBar: AppBar(title: Text("Welcome Dear Customer"),),
          body:  Form(
            key: _formKey,
           // margin: EdgeInsets.all(30.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListView(
                  children: <Widget>[
                    Expanded(
                      child: getImage(),
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
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: textStyle,
                          controller: first_name,
                          validator: (String value){
                            if (value.isEmpty){
                              return"Please enter your name";
                            }
                          },
                          decoration: InputDecoration(
                            icon: Icon(Icons.person,
                              color: Colors.grey,
                            ),
                            hintText: 'FirstName',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 10.0,
                            ),
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
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: textStyle,
                          controller: last_name,
                          validator: (String value){
                            if (value.isEmpty){
                              return"Please enter your last name";
                            }
                          },
                          decoration: InputDecoration(
                              icon: Icon(Icons.person,
                                color: Colors.grey,
                              ),
                              hintText: 'LastName',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 10.0,
                            ),
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
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: textStyle,
                          controller: email,
                          validator: (String value){
                            if (value.isEmpty){
                              return"Please enter your email";
                            }
                          },
                          decoration: InputDecoration(
                              icon: Icon(Icons.email,
                                color: Colors.grey,
                              ),
                              hintText: 'Email',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 10.0,
                            ),
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
                        child: TextFormField(
                          style: textStyle,
                          controller: address,
                          validator: (String value){
                            if (value.isEmpty){
                              return"Please enter your address";
                            }
                          },
                          decoration: InputDecoration(
                            icon: Icon(Icons.home,
                              color: Colors.grey,
                            ),
                            hintText: 'address',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 10.0,
                            ),
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
                        child: TextFormField(
                          style: textStyle,
                          controller: password,
                          validator: (String value){
                            if (value.isEmpty){
                              return"Please enter your password";
                            }
                          },
                          decoration: InputDecoration(
                              icon: Icon(Icons.vpn_key,
                                color: Colors.grey,
                              ),
                              hintText: 'Password',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 10.0,
                            ),
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
                        child: TextFormField(
                          style: textStyle,
                          controller: confirm,
                          validator: (String value){
                            if (value.isEmpty){
                              return"Please enter your confirm password";
                            }
                          },
                          decoration: InputDecoration(
                              icon: Icon(Icons.vpn_key,
                                color: Colors.grey,
                              ),
                              hintText: 'Confirm',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 10.0,
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
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 50,
                          width: 350,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                              color: Color(0xFFAB47BC),
                              child: Text(
                                'Register',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                              ),
                              onPressed: (){

                                setState(() {
                                  if(_formKey.currentState.validate())
                                  createAccount();

                                });
                              },
                          ),
                        ),

                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 50,
                          width: 350,
                          child:
                          RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)
                              ),
                              color: Color(0xFFAB47BC),
                              child: Text('Reset',style: TextStyle(
                                color: Colors.black,
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,

                              ),),
                              onPressed: (){
                                setState(() {
                                  reset();
                                });
                              }
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
          )
      ),
    );
  }
  Widget getImage(){



    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:  AssetImage('images/31.jpg'),fit: BoxFit.cover)
      ),
    );
  }


  void reset(){
    first_name.text = '';
    last_name.text = '';
    email.text = '';
    address.text = '';
    password.text = '';
    confirm.text = '';


  }
  void moveToLastScreen(){
    Navigator.pop(context);
  }



}
