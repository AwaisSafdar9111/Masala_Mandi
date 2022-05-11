import 'package:flutter/material.dart';
import '../pages/cart.dart';
import 'home.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body : ListView(
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new Homescreen()));
            },
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
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
          InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text('LogOut'),
              leading: Icon(Icons.help),
            ),
          ),
        ],
      ),
      
    );
  }
}
