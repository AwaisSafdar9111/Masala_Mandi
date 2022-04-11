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
    {
      "name": 'Haldi',
      "picture": 'images/categories icons/cream.png',
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
          return Single_pro(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old price'],
            prod_price: product_list[index]['price'],
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
      child: Hero(
        tag: new Text("hero tag 1`"),
        child: Material(
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
                color: Colors.white70,
          child: new Row(
            children: <Widget>[
              Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),

              ),
              new Text("\$${prod_price}",style: TextStyle (color: Colors.purple,fontWeight: FontWeight.bold),)
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
