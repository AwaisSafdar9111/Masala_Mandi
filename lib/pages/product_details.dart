import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key key, this.product_details_name, this.product_details_new_price, this.product_details_old_price, this.product_detail_picture}) : super(key: key);
final product_details_name;
final product_details_new_price;
final product_details_old_price;
final product_detail_picture;
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.purple,
        title: const Text('Spice Bazaar'),
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
      body: new ListView(
        children:<Widget> [
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
              child: Image.asset(widget.product_detail_picture),
              ),
            ),

          )
        ],
      ),
    );
  }
}
