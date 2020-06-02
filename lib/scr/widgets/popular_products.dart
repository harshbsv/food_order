import 'package:flutter/material.dart';
import 'package:foodorder/scr/models/popular.dart';
import 'package:foodorder/customtext.dart';

List<Popular> popularProducts = [
  Popular(name: "Sauteed Veggies", price: 7.99, rating: 4.1, vendor: "GoodFoods", wishList: false, image: "images/sauteedveggies.jpeg"),
  Popular(name: "Chicken Tikka", price: 13.99, rating: 4.1, vendor: "GoodFoods", wishList: false, image: "images/chickentikka.jpg"),
  Popular(name: "Tacos", price: 9.99, rating: 4.1, vendor: "GoodFoods", wishList: false, image: "images/tacos.jpg"),
  Popular(name: "Mutton Biryani", price: 23.99, rating: 4.1, vendor: "GoodFoods", wishList: false, image: "images/muttonbiryani.jpg"),
  Popular(name: "Nachos", price: 13.99, rating: 4.1, vendor: "GoodFoods", wishList: false, image: "images/nachos.jpg"),
];

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: popularProducts.length,
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red[100],
                        offset: Offset(10,5),
                        blurRadius: 4,
                      ),
                    ]
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset("${popularProducts[index].image}", height: 135,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(text: popularProducts[index].name,),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset(1,1),
                                    blurRadius: 4,
                                  ),
                                ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: popularProducts[index].wishList ? Icon(Icons.favorite, size: 18, color: Colors.red,) : Icon(Icons.favorite_border, size: 18, color: Colors.red,),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: CustomText(text: popularProducts[index].rating.toString(), colors: Colors.grey, size: 14,),
                            ),
                            SizedBox(width: 4,),
                            Icon(Icons.star, color: Colors.red, size: 16,),
                            Icon(Icons.star, color: Colors.red, size: 16,),
                            Icon(Icons.star, color: Colors.red, size: 16,),
                            Icon(Icons.star, color: Colors.red, size: 16,),
                            Icon(Icons.star, color: Colors.grey, size: 16,),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CustomText(text: "\$${popularProducts[index].price.toString()}", weight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}


