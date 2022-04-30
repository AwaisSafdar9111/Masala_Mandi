import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:spice_bazaar/Provider/google_sign_in.dart';
import 'package:spice_bazaar/pages/SignUp.dart';
import 'package:spice_bazaar/pages/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  static final String title = 'Spice Bazaar ';

  @override
  Widget build(BuildContext context) =>
      ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: HomePage(),
      ),
  );


}
