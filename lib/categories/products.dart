import 'package:flutter/material.dart';
import 'package:spice_bazaar/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  //keys
  var product_list = [
    {
      "name": 'Haldi',
      "picture": 'images/haldi1.jpg',
      "price": 300,
    },{
      "name": 'Desi Ghee',
      "picture": 'images/Desi Ghee.jpg',
      "price": 1650,
    },{
      "name": 'Cream',
      "picture": 'images/Cream.jpg',
      "price": 500,
    },{
      "name": 'Black Paper ',
      "picture": 'images/black pepper.jpg',
      "price": 250,
    },
    {
      "name": 'Garm Masala',
      "picture": 'images/garm_masala.jpg',
      "price": 200,
    },{
      "name": 'Haldi',
      "picture": 'images/haldi1.jpg',

      "price": 300,
    },{
      "name": 'Desi Ghee',
      "picture": 'images/Desi Ghee.jpg',
      "price": 1650,
    },{
      "name": 'Cream',
      "picture": 'images/Cream.jpg',
      "price": 500,
    },{
      "name": 'Black Paper ',
      "picture": 'images/black pepper.jpg',
      "price": 250,
    },
    {
      "name": 'Garm Masala',
      "picture": 'images/garm_masala.jpg',
      "price": 200,
    },{
      "name": 'Haldi',
      "picture": 'images/haldi1.jpg',

      "price": 300,
    },{
      "name": 'Desi Ghee',
      "picture": 'images/Desi Ghee.jpg',
      "price": 1650,
    },{
      "name": 'Cream',
      "picture": 'images/Cream.jpg',
      "price": 500,
    },{
      "name": 'Black Paper ',
      "picture": 'images/black pepper.jpg',
      "price": 250,
    },
    {
      "name": 'Garm Masala',
      "picture": 'images/garm_masala.jpg',
      "price": 200,
    },{
      "name": 'Haldi',
      "picture": 'images/haldi1.jpg',

      "price": 300,
    },{
      "name": 'Desi Ghee',
      "picture": 'images/Desi Ghee.jpg',
      "price": 1650,
    },{
      "name": 'Cream',
      "picture": 'images/Cream.jpg',
      "price": 500,
    },{
      "name": 'Black Paper ',
      "picture": 'images/black pepper.jpg',
      "price": 250,
    },
    {
      "name": 'Garm Masala',
      "picture": 'images/garm_masala.jpg',
      "price": 200,
    },


  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount( crossAxisSpacing: 2,
            mainAxisSpacing: 2,crossAxisCount:2,childAspectRatio:0.999,
        ),

        itemBuilder: (BuildContext context, int index) {
                    return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_pro(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_pro extends StatelessWidget {
  const Single_pro(
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
      margin: EdgeInsets.all(10),
      color: Colors.green[100],
      shadowColor: Colors.white38,
      elevation: 10,
      child: Hero(
        tag: new Text("hero tag 1`"),
        child: Material(
          borderRadius: BorderRadius.circular(20.0),
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              //here we are passing the values of the product to the product details page
                new MaterialPageRoute(builder: (context) => new ProductDetails(
                  product_details_name: prod_name,
                  product_details_new_price: prod_price,
                  product_details_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white38,
                child: new Row(
                  children: <Widget>[
                    Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),

                    ),
                    new Text("\Rs${prod_price}",style: TextStyle (color: Colors.purple,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
