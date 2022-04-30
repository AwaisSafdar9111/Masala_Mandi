import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:spice_bazaar/Provider/google_sign_in.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            onPrimary: Colors.white,
            minimumSize: Size(double.infinity, 50),
          ),
          onPressed: () {
            final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
            provider.googleLogin();
          },
          label: Text('SignUp With Google'),
        )
      ],
    );
  }
}
