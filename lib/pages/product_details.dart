import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key key,
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_detail_picture})
      : super(key: key);
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
        children: <Widget>[
      new Container(
      height: 300.0,
        child: GridTile(
          child: Container(
            color: Colors.white,
            child: Image.asset(widget.product_detail_picture),
          ),
          footer: new Container(
            color: Colors.white70,
            child: ListTile(
              leading: new Text(
                widget.product_details_name,
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              title: new Row(
                children: <Widget>[
                  Expanded(
                      child: new Text(
                        "\$${widget.product_details_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                  Expanded(
                      child: new Text(
                        "\$${widget.product_details_new_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.purple),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
      //=========== The first Button ==============
      Row(
        children: <Widget>[
          // ====== The Size Button =======
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.white,
              textColor: Colors.purple,
              elevation: 0.2,
              child: Row(
                children: <Widget>[
                  Expanded(child: new Text("Size")),
                  Expanded(child: new Icon(Icons.arrow_drop_down)),
                ],
              ),
            ),
          ),
          // ====== The Size Button =======
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.white,
              textColor: Colors.purple,
              elevation: 0.2,
              child: Row(
                children: <Widget>[
                  Expanded(child: new Text("Color")),
                  Expanded(child: new Icon(Icons.arrow_drop_down)),
                ],
              ),
            ),
          ),
          // ====== The Size Button =======
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.white,
              textColor: Colors.purple,
              elevation: 0.2,
              child: Row(
                children: <Widget>[
                  Expanded(child: new Text("Qty")),
                  Expanded(child: new Icon(Icons.arrow_drop_down)),
                ],
              ),
            ),
          ),
        ],
      ),
      //=========== The first Button ==============
      Row(
        children: <Widget>[
          // ====== The Size Button =======
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.purple,
              textColor: Colors.white,
              elevation: 0.2,
              child: new Text('Buy now')
            ),
          ),
new IconButton(onPressed:(){}, icon: Icon(Icons.add_shopping_cart,color: Colors.purple,)),
new IconButton(onPressed:(){}, icon: Icon(Icons.favorite_border,color: Colors.purple,)),
        ],
      ),
    ],
      ),
    );
  }
}
