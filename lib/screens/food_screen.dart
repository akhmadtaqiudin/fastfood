import 'package:fastfood/module/foods/model_food.dart';
import 'package:fastfood/ui/food_ui.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  static String id = "food";
  FoodUI _ui = FoodUI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food Menu'), backgroundColor: Colors.teal),
      body: _ui.buildView(),
    );
  }
}

class DetailFood extends StatelessWidget {
  static String id = "detailFood";
  FoodUI _ui = FoodUI();
  ModelFood mf;

  DetailFood({Key key, @required this.mf}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mf.name), backgroundColor: Colors.teal),
      body: _ui.buildDetailFood(mf, context),
    );
  }
}