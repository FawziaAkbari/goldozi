import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldozi/widgets/Images_cards.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Handi",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            )),
                        TextSpan(
                            text: "Crafts",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: Colors.purple,
                            )),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search Model",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.search),
                        ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Best Models",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87,
                            )),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      )
                    ]),
                SizedBox(height: 15),
                ImageCards(),
                SizedBox(height: 50),
                Text('More Photos..',
                    style: TextStyle(
                      color: Colors.purple[300],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset('images/2.jpg'),
                          width: 190.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple[200],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 15,
                        ),
                        Container(
                          child: Image.asset('images/3.jpg'),
                          width: 190.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple[200],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                  width: 15,
                ),
                Container(
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset('images/4.jpg'),
                          width: 190.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple[200],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 15,
                        ),
                        Container(
                          child: Image.asset('images/5.jpg'),
                          width: 190.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple[200],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                  width: 15,
                ),
                Container(
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset('images/6.jpg'),
                          width: 190.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple[200],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 15,
                        ),
                        Container(
                          child: Image.asset('images/7.jpg'),
                          width: 190.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple[200],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                  width: 15,
                ),
                Container(
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset('images/8.jpg'),
                          width: 190.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple[200],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 15,
                        ),
                        Container(
                          child: Image.asset('images/9.jpg'),
                          width: 190.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple[200],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
