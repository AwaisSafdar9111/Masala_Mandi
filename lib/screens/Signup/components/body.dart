import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spice_bazaar/screens/Login/login_screen.dart';
import 'package:spice_bazaar/screens/Signup/components/background.dart';
import 'package:spice_bazaar/components/already_have_an_account_acheck.dart';
import 'package:spice_bazaar/components/rounded_button.dart';
import 'package:spice_bazaar/components/rounded_input_field.dart';
import 'package:spice_bazaar/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

import '../../../authentication_service.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final emailTextController =new TextEditingController();
    final passwordTextController=new TextEditingController();
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "images/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              control: emailTextController,
            ),
            RoundedPasswordField(
              onChanged: (value) {
              },
              control: passwordTextController,
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () async {
                print(emailTextController.text.trim());
                final result = await context
                    .read<AuthenticationService>()
                    .signUp(
                    emailTextController.text.toString().trim(),
                    passwordTextController.text.toString().trim()
                );
                print(emailTextController.text.trim());
                if (result == "Signed up") {
                  Navigator.pop(
                      context,MaterialPageRoute(builder: (context) =>  LoginScreen()));
                }
                else
                {
                  print("Not sign in");
                }
              },

            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
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