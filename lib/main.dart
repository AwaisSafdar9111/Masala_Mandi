import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//my own imports
import 'package:spice_bazaar/categories/horizontal_listview.dart';
import 'package:spice_bazaar/categories/products.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Spice Bazaar ',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget imageCarousel=SizedBox(
  height: 200,
      // width: MediaQuery.of(context).size.width,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: const [
        AssetImage('images/Mix Spice.jpg'),
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
      dotSize: 8.0,
      overlayShadowColors: Colors.white70,
      dotBgColor: Colors.white10,
      indicatorBgPadding: 10.0,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: const Duration(milliseconds: 500),
    ),
  );
    return Scaffold(
      appBar: AppBar(
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
              decoration: const BoxDecoration(color: Colors.purple),
            ),
//        body
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.purple),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.purple),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.purple),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.purple),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.purple),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.purple),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children:<Widget> [
          imageCarousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(10.0),
          child: new Text('Categories '),
          ),
          //Horizontal list view begins here
          HorizontalList(),
          const Divider(),
          //padding widget
          new Padding(padding: const EdgeInsets.all(30.0),
            child: new Text('Recent Products '),
          ),
          Padding(padding: const EdgeInsets.all(10.0),),
 //grid View
          Container(
            height: 320.0,
            child: Products(),
          )
        ],

      ),
    );
  }
}
