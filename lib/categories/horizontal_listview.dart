import 'package:flutter/material.dart';
import 'package:spice_bazaar/categories/products.dart';
import 'package:spice_bazaar/categories/screen_categories_details.dart';

import '../pages/cart.dart';

class Categories extends StatefulWidget {
  const Categories({Key key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.green,
        title: const Text('Categories'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              })
        ],
      ),
      body: Column(
        children:<Widget> [
          const Divider(),
          //padding widget

          Padding(padding: const EdgeInsets.all(1.0),),
          Flexible(child: Categories_details()),
        ],
      ),
    );
  }
}
