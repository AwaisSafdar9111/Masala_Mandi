import 'package:flutter/material.dart';
import 'package:spice_bazaar/pages/product_details.dart';

class Categories_details extends StatefulWidget {
  const Categories_details({Key key}) : super(key: key);

  @override
  State<Categories_details> createState() => _Categories_detailsState();
}

class _Categories_detailsState extends State<Categories_details> {
  //keys
  var product_list = [
    {
      "name": 'Desi Ghee',
      "picture": 'images/Desi Ghee.jpg',

    },{
      "name": 'Cream',
      "picture": 'images/Cream.jpg',

    },{
      "name": 'Black Paper ',
      "picture": 'images/black pepper.jpg',
    },
    {
      "name": 'Garm Masala',
      "picture": 'images/garm_masala.jpg',
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
            ),
          );
        });
  }
}

class Single_pro extends StatelessWidget {
  const Single_pro(
      {Key key,
        this.prod_name,
        this.prod_picture,   })
      : super(key: key);
  final prod_name;
  final prod_picture;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Colors.green[100],
      shadowColor: Colors.blueGrey,
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
                   product_detail_picture: prod_picture,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white38,
                child: new Row(
                  children: <Widget>[
                    Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),

                    ),

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
