import 'package:fastfood/module/drinks/data_drink.dart';
import 'package:fastfood/module/drinks/model_drink.dart';
import 'package:fastfood/screens/drink_screen.dart';
import 'package:flutter/material.dart';

class DrinkUI{
  ListView buildView(){
    return ListView.builder(
      itemCount: DataDrink.itemCount,
      itemBuilder: (context, index){
        ModelDrink drink = DataDrink.getItemDrink(index);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7,
            shadowColor: Colors.teal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDrink(md: drink)));
                },
                title: Text(drink.name, style: TextStyle(fontWeight: FontWeight.bold)),
                leading: CircleAvatar(backgroundColor: Colors.black12, backgroundImage: AssetImage(drink.image), radius: 35),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildDetailFood(ModelDrink d, BuildContext context){
    return ListView(
      children: [
        Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Hero(
                  tag: d.name,
                  child: Image.asset(d.image)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.all(13),
                    child: Text(d.name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                ),
                Padding(
                    padding: EdgeInsets.all(13),
                    child: Text(d.price, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.all(7),
                child: Text(d.detail, style: TextStyle(fontSize: 20))
            )
          ],
        )
      ],
    );
  }
}