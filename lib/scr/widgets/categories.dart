import 'package:flutter/material.dart';
import 'package:foodorder/scr/models/category.dart';
import 'customtext.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "images/salad.png"),
  Category(name: "Fast Food", image: "images/sandwich.png"),
  Category(name: "Seafood", image: "images/fish.png"),
  Category(name: "Steak", image: "images/steak.png"),
  Category(name: "Beer", image: "images/pint.png"),
  Category(name: "Deserts", image: "images/icecream.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemCount: categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red[100],
                        offset: Offset(4,6),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset("${categoriesList[index].image}", width: 60,),
                  ),
                ),
                SizedBox(height: 5,),
                CustomText(text: categoriesList[index].name, size: 16, colors: Colors.black,),
              ],
            ),
          );
        },
      ),
    );
  }
}



