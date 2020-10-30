import 'package:fastfood/module/drinks/data_drink.dart';
import 'package:fastfood/module/drinks/model_drink.dart';
import 'package:fastfood/screens/drink_screen.dart';
import 'package:flutter/material.dart';

class DrinkUI{
  Widget buildView(){
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: DataDrink.itemCount,
      itemBuilder: (context, index){
        ModelDrink drink = DataDrink.getItemDrink(index);
        return InkWell(
          splashColor: Colors.teal,
          onTap: () {
            Navigator.pushNamed(context, DetailDrink.id, arguments: drink);
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              shadowColor: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                    tag: drink.name,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(drink.image),
                      )
                    ),
                  ),
                  Text(
                    drink?.name ?? "no title",
                    style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
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