import 'package:fastfood/module/sides/model_sides.dart';
import 'package:fastfood/ui/sides_ui.dart';
import 'package:flutter/material.dart';

class SidesScreen extends StatelessWidget {
  static String id = "sides";
  SidesUI _ui = SidesUI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Sides Menu', style: TextStyle(fontFamily: 'DancingScript', fontWeight: FontWeight.bold)),
          backgroundColor: Colors.teal
      ),
      body: _ui.buildView(),
    );
  }
}

class DetailSides extends StatelessWidget {
  static String id = "detailSides";
  SidesUI _ui = SidesUI();
  ModelSides ms;

  DetailSides({Key key, @required this.ms}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(ms.name, style: TextStyle(fontFamily: 'DancingScript', fontWeight: FontWeight.bold)),
          backgroundColor: Colors.teal
      ),
      body: _ui.buildDetailFood(ms, context),
    );
  }
}