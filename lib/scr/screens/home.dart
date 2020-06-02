import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodorder/customtext.dart';
import 'package:foodorder/scr/widgets/categories.dart';
import 'package:foodorder/scr/widgets/featured_product.dart';
import 'package:foodorder/scr/widgets/popular_products.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: CustomText(text: 'What would you like to eat?', size: 19,),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.notifications_none), onPressed: (){},),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(1,1),
                      blurRadius: 4,
                    ),
                  ]
                ),
                child: ListTile(
                  leading: Icon(Icons.search, color: Colors.red,),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find food and Restaurants.',
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(Icons.filter_list, color: Colors.red,),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Featured",),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Popular Products",),
            ),
            PopularProducts(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Image.asset("images/home.png", width: 26, height: 26,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/target.png", width: 26, height: 26,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/shoppingbag.png", width: 26, height: 26,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Image.asset("images/avatar.png", width: 26, height: 26,),
            ),
          ],
        ),
      ),
    );
  }
}

