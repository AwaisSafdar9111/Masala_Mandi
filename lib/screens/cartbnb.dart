import 'package:flutter/material.dart';
//my own imports
import 'package:spice_bazaar/categories/cart_products.dart';
class Cartbnd extends StatefulWidget {
  const Cartbnd({Key key}) : super(key: key);

  @override
  State<Cartbnd> createState() => _CartbndState();
}

class _CartbndState extends State<Cartbnd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: const Text('Masala Mandi',style:TextStyle(fontWeight:FontWeight.bold, fontSize: 22.0) ),
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
              onPressed: () {})
        ],
      ),
      body: new Cart_Products(),
    );
  }
}