import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome'),),
      body: Center(
        child: Text('Welcome to your dashboard',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),
        ),
      ),
    );
  }
}
