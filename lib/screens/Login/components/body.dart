import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:spice_bazaar/screens/Login/components/background.dart';
import 'package:spice_bazaar/screens/Signup/signup_screen.dart';
import 'package:spice_bazaar/components/already_have_an_account_acheck.dart';
import 'package:spice_bazaar/components/rounded_button.dart';
import 'package:spice_bazaar/components/rounded_input_field.dart';
import 'package:spice_bazaar/components/rounded_password_field.dart';
import '../../../authentication_service.dart';
import '../../home.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController emailTextController;
    TextEditingController passwordTextController;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "images/login.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
              },
              control: emailTextController,
            ),
            RoundedPasswordField(
              onChanged: (value) {
              },
              control:passwordTextController,
            ),
            RoundedButton(
                text: "LOGIN",
                press: () {
                  //context.read<AuthenticationService>()
                  //     .signIn(
                  //   email: emailTextController.text.trim(),
                  //   password: passwordTextController.text.trim(),
                  // );
                }
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}