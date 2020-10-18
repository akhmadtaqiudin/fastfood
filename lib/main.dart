import 'package:fastfood/screens/drink_screen.dart';
import 'package:fastfood/screens/food_screen.dart';
import 'package:fastfood/screens/home_screen.dart';
import 'package:fastfood/screens/loading_screen.dart';
import 'package:fastfood/screens/salad_screen.dart';
import 'package:fastfood/screens/sides_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoadingScreen.id,
      routes: {
        LoadingScreen.id: (context) => LoadingScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        DrinkScreen.id: (context) => DrinkScreen(),
        FoodScreen.id: (context) => FoodScreen(),
        SaladScreen.id: (context) => SaladScreen(),
        SidesScreen.id: (context) => SidesScreen(),
        DetailDrink.id: (context) => DetailDrink(),
        DetailFood.id: (context) => DetailFood(),
        DetailSalad.id: (context) => DetailSalad(),
        DetailSides.id: (context) => DetailSides()
      },
    );
  }
}