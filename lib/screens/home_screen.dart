import 'package:fastfood/screens/drink_screen.dart';
import 'package:fastfood/screens/food_screen.dart';
import 'package:fastfood/screens/salad_screen.dart';
import 'package:fastfood/screens/sides_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = "home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food And Drink Menu'),backgroundColor: Colors.teal),
      body: ListView(
        children: [
          Container(
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, FoodScreen.id);
              },
              child: Container(
                height: 200,
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/chicken.png"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(7),color: Colors.black12
                ),
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, DrinkScreen.id);
              },
              child: Container(
                height: 200,
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/drinks.png"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(7),color: Colors.black12
                ),
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, SaladScreen.id);
              },
              child: Container(
                height: 200,
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/salad.png"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(7),color: Colors.black12
                ),
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, SidesScreen.id);
              },
              child: Container(
                height: 200,
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/sides.png"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(7),color: Colors.black12
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

