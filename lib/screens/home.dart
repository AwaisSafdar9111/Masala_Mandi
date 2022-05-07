import 'package:flutter/material.dart';
import 'package:spice_bazaar/screens/profile.dart';
import 'package:spice_bazaar/screens/settings.dart';


import '../categories/horizontal_listview.dart';
import 'chat.dart';
import 'dashboard.dart';
import 'index.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Homescreen> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Dashboard(),
    HomePage(),
    Chat(),
    Profile(),
    Settings(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: Icon(Icons.home),
        onPressed: () {
          setState(() {
            currentScreen =
                HomePage(); // if user taps on this dashboard tab will be active
            currentTab = 0;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Dashboard(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.dashboard,
                          color: currentTab ==1 ? Colors.pink : Colors.grey,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.pink : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            HorizontalList(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.chat,
                          color: currentTab ==  2? Colors.pink : Colors.grey,
                        ),
                        Text(
                          'Chats',
                          style: TextStyle(
                            color: currentTab ==  2? Colors.pink : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Profile(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: currentTab == 3 ? Colors.pink : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.pink : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Settings(); // if user taps on this dashboard tab will be active
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.settings,
                          color: currentTab == 4 ? Colors.pink : Colors.grey,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: currentTab == 4 ? Colors.pink : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
