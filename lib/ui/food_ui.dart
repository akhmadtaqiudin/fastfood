import 'package:fastfood/module/foods/data_food.dart';
import 'package:fastfood/module/foods/model_food.dart';
import 'package:fastfood/screens/food_screen.dart';
import 'package:flutter/material.dart';

class FoodUI{
  ListView buildView(){
    return ListView.builder(
      itemCount: DataFood.itemCount,
      itemBuilder: (context, index){
        ModelFood food = DataFood.getItemFood(index);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7,
            shadowColor: Colors.teal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailFood(mf: food)));
                },
                title: Text(food.name, style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Text(food.price, style: TextStyle(fontWeight: FontWeight.bold)),
                leading: CircleAvatar(backgroundColor: Colors.black12, backgroundImage: AssetImage(food.image), radius: 35),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildDetailFood(ModelFood food, BuildContext context){
    return ListView(
      children: [
        Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Hero(
                  tag: food.name,
                  child: Image.asset(food.image)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.all(13),
                    child: Text(food.name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                ),
                Padding(
                    padding: EdgeInsets.all(13),
                    child: Text(food.price, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.all(7),
                child: Text(food.detail, style: TextStyle(fontSize: 20))
            )
          ],
        )
      ],
    );
  }
}