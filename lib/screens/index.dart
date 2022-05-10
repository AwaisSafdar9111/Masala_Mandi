import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:spice_bazaar/categories/horizontal_listview.dart';
import 'package:spice_bazaar/screens/chat.dart';
import 'package:spice_bazaar/categories/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel=Container(
      height: 220,
      padding: EdgeInsets.all(8.0),

      //width: MediaQuery.of(context).size.width,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: const [
          AssetImage('images/Spice mix.jpg'),
          AssetImage('images/Haldi.jpg'),
          AssetImage('images/Coriander Powder(Dhania).jpg'),
          AssetImage('images/Cream.jpg'),
          AssetImage('images/black pepper.jpg'),
          AssetImage('images/Desi Ghee.jpg'),
          AssetImage('images/Desi Red Chilli Crushed.webp'),
          AssetImage('images/Garam Masala Powder.jpg'),
          AssetImage('images/Gram Flour.jpg'),
          AssetImage('images/Red Chilli Powder.jpg'),

        ],
        autoplay: true,
        dotSize: 9.0,
        overlayShadowColors: Colors.black12,
        dotBgColor: Colors.white24,
        indicatorBgPadding: 10.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 500),

      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.transparent,
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: const Text('Moiz Butt'),
              accountEmail: const Text('moizbutt890@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(color: Colors.green),
            ),
//        body
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.green),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.green),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.green),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Chat()));
              },
              child: const ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.green),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.green),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children:<Widget> [
          imageCarousel,

          const Divider(),
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recent Products ')),
          ),
          Padding(padding: const EdgeInsets.all(10.0),),
          Flexible(child: Products()),
        ],
      ),
    );
  }
}