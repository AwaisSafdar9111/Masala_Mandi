import 'package:flutter/material.dart';
import 'package:spice_bazaar/screens/Login/login_screen.dart';

void main() async{
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  static final String title = 'Spice Bazaar ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: LoginScreen(),
      );
  }


}
