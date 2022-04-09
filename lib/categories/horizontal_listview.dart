import 'package:flutter/material.dart';
//Moiz Butt
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      padding: EdgeInsets.all(2.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/categories icons/coriander(Dhania).png',
              image_caption: 'Dhania Powder/دھنیا پاؤڈر'
          ),
            Category(
              image_location: 'images/categories icons/chilli.png',
              image_caption: 'Chilli/مرچیں',


          ),
          Category(
              image_location: 'images/categories icons/cream.png',
              image_caption: 'Cream/کریم'

          ),

          Category(
              image_location: 'images/categories icons/Garam Masala.png',
              image_caption: 'Garam Masala/گرم مصالحہ'

          ),
          Category(
              image_location: 'images/categories icons/Desi ghee.png',
              image_caption: 'Desi Ghee/دیسی گھی'

          ),
          Category(
              image_location: 'images/categories icons/turmeric(Haldi).png',
              image_caption: 'Haldi/ہلدی'

          ),
          Category(
              image_location: 'images/categories icons/Gram flour(Basen).png',
              image_caption: 'Gram Flour/بیسن'

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
