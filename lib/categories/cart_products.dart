import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  const Cart_Products({Key key}) : super(key: key);

  @override
  State<Cart_Products> createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart = [
    {
      "name": 'Desi Ghee',
      "picture": 'images/categories icons/Desi ghee.png',
      "price": 165,
      "size": "M",
      "color": "purple",
      "quantity": 1,
    },
    {
      "name": 'Coriander',
      "picture": 'images/categories icons/coriander(Dhania).png',
      "price": 96,
      "size": "M",
      "color": "green",
      "quantity": 1,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  const Single_cart_product(
      {Key key,
      this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty})
      : super(key: key);
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //======== LEADING SECTION & PRODUCT IMAGE ========
        leading: new Image.asset(
          cart_prod_picture,
          width: 100.0,
          height: 100.0,
        ),
        //======= END ========
        //===== TITLE SECTION ======
        title: new Text(cart_prod_name),
        //======== SUBTITLE SECTION ========
        subtitle: new Column(
          children: <Widget>[
            //===Row INSIDE THE COLUMN=====
            new Row(
              children: <Widget>[
                //===THIS SECTION IS FOR THE SIZE OF THE PRODUCT====
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                // ===THIS SECTION IS FOR THE COLOR OF PRODUCT
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            // ====THIS SECTION FOR THE PRODUCT PRICE=======
            new Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            )
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            Expanded(child: new IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up),padding: const EdgeInsets.all(0.0),alignment: Alignment.topCenter,),),
            new Text("$cart_prod_qty"),
            Expanded(child: new IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down),padding:const EdgeInsets.all(0.0),alignment: Alignment.bottomCenter,)),
          ],
        ),
      ),
    );
  }
}
