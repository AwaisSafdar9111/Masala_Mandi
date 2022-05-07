import 'package:flutter/material.dart';
import 'package:spice_bazaar/main.dart';
import 'package:spice_bazaar/screens/index.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails(
      {Key key,
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
        backgroundColor: Colors.green,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: const Text('Spice Bazaar')),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
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
                            fontWeight: FontWeight.bold, color: Colors.green),
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
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Size'),
                            content: new Text('Choose the size'),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.green,
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
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Colors'),
                            content: new Text('Choose the colors'),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.green,
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
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Quantity '),
                            // content: new Text('Choose the quantity'),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.green,
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
          //=========== The Second Button ==============
          Row(
            children: <Widget>[
              // ====== The Size Button =======
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text('Buy now')),
              ),
              new IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.green,
                  )),
              new IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.green,
                  )),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          //====ADD THE PRODUCT NAME=====
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_details_name)),
            ],
          ),
          //=====PRODUCT BRAND=======
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // Remember to create the product Brand
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("No Brand"),
              )
            ],
          ),
          //=======ADD THE PRODUCT CONDITION======
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // Remember the product Condition
              Padding(padding: EdgeInsets.all(5.0), child: new Text("Fresh")),

            ],
          ),
          Divider(),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Similar Products")),
          //Similar Product Selection
          Container(
            height: 340.0,
            child:Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key key}) : super(key: key);

  @override
  State<Similar_products> createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  //keys
  var product_list = [
    {
      "name": 'Haldi',
      "picture": 'images/categories icons/coriander(Dhania).png',
      "old price": 195,
      "price": 165,
    },
    {
      "name": 'Desi Ghee',
      "picture": 'images/categories icons/Desi ghee.png',
      "old price": 195,
      "price": 165,
    },
    {
      "name": 'Haldi',
      "picture": 'images/categories icons/turmeric(Haldi).png',
      "old price": 195,
      "price": 165,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_pro(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_pro extends StatelessWidget {
  const Similar_single_pro(
      {Key key,
      this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price})
      : super(key: key);
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero tag 1`"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                //here we are passing the values of the product to the product details page
                new MaterialPageRoute(
                    builder: (context) => new ProductDetails(
                          product_details_name: prod_name,
                          product_details_new_price: prod_price,
                          product_details_old_price: prod_old_price,
                          product_detail_picture: prod_picture,
                        ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        prod_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                    new Text(
                      "\$${prod_price}",
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
