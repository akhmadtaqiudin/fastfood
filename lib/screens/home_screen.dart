import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Makanan'),backgroundColor: Colors.teal),
      body: Column(
        children: [
          Flexible(
            child: Container(
              width: 400,
              height: 300,
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/makan.png"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(7),color: Colors.black12
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: 400,
              height: 300,
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/minum.png"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(7),color: Colors.black12
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: 400,
              height: 300,
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/salad.png"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(7),color: Colors.black12
              ),
            ),
          )
        ],
      ),
    );
  }
}

