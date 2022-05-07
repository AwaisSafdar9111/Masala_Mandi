import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spice_bazaar/pages/SignUp.dart';
import '../screens/index.dart';

class SignUpCheckWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context,snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                return HomePage();
              } else if (snapshot.hasError) {
                return Center(child: Text('Something went wrong!  '));
              } else {
                return SignUpWidget();
              }
            }),
      );
}
