import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: EdgeInsets.all(0.5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/Coriander Powder(Dhania).jpg',
              image_caption: 'Spices'
          ),
            Category(
              image_location: 'images/Red Chilli Powder.jpg',
              image_caption: ' Handi craft',


          ),
          Category(
              image_location: 'images/Cream.jpg',
              image_caption: 'Dairy products'

          ),

          Category(
              image_location: 'images/categories icons/Garam Masala.png',
              image_caption: 'Custom products'

          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 121.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 85.0,
              ),
              subtitle: Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              ),),
        ),
      ),
    );
  }
}
