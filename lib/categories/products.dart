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
      "name": 'Haldi',
      "picture": 'images/categories icons/coriander(Dhania).png',
      "old price": 195,
      "price": 165,
    },
    {
      "name": 'Haldi',
      "picture": 'images/categories icons/coriander(Dhania).png',
      "old price": 195,
      "price": 165,
    },
    {
      "name": 'Haldi',
      "picture": 'images/categories icons/coriander(Dhania).png',
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
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new ProductDetails())),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$$prod_price",
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    "\$$prod_old_price",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 2.85,
                    ),
                  ),
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
