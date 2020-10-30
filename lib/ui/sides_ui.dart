import 'package:fastfood/module/sides/data_sides.dart';
import 'package:fastfood/module/sides/model_sides.dart';
import 'package:fastfood/screens/sides_screen.dart';
import 'package:flutter/material.dart';

class SidesUI{
  ListView buildView(){
    return ListView.builder(
      itemCount: DataSides.itemCount,
      itemBuilder: (context, index){
        ModelSides sides = DataSides.getItemSides(index);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7,
            shadowColor: Colors.teal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: (){
                  Navigator.pushNamed(context, DetailSides.id, arguments: sides);
                },
                title: Text(sides.name, style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Text(sides.price, style: TextStyle(fontWeight: FontWeight.bold)),
                leading: CircleAvatar(backgroundColor: Colors.black12, backgroundImage: AssetImage(sides.image), radius: 35),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildDetailFood(ModelSides s, BuildContext context){
    return ListView(
      children: [
        Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Hero(
                tag: s.name,
                child: Image.asset(s.image)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Text(s.name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                ),
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Text(s.price, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Text(s.detail, style: TextStyle(fontSize: 20))
            )
          ],
        )
      ],
    );
  }
}