import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'E COM ',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
