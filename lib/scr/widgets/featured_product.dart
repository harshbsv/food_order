import 'package:flutter/material.dart';
import 'package:foodorder/scr/models/products.dart';
import 'package:foodorder/customtext.dart';

List<Product> productsList = [
  Product(name: "Sauteed Veggies", price: 3.99, rating: 4.1, vendor: "GoodFoods", wishList: true, image: "images/sauteedveggies.jpeg"),
  Product(name: "Pasta", price: 8.99, rating: 4.7, vendor: "GoodFoods", wishList: true, image: "images/pasta.jpg"),
  Product(name: "Chicken Biryani", price: 6.99, rating: 3.5, vendor: "GoodFoods", wishList: false, image: "images/chickenbiryani.jpg"),
  Product(name: "Paneer Tikka", price: 9.99, rating: 3, vendor: "GoodFoods", wishList: false, image: "images/paneertikka.jpg"),
  Product(name: "Steak", price: 25.99, rating: 4.8, vendor: "GoodFoods", wishList: false, image: "images/steak.jpg"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
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
                    Image.asset("${productsList[index].image}", height: 135,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(text: productsList[index].name,),
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
                              child: productsList[index].wishList ? Icon(Icons.favorite, size: 18, color: Colors.red,) : Icon(Icons.favorite_border, size: 18, color: Colors.red,),
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
                              child: CustomText(text: productsList[index].rating.toString(), colors: Colors.grey, size: 14,),
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
                          child: CustomText(text: "\$${productsList[index].price.toString()}", weight: FontWeight.bold,),
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

