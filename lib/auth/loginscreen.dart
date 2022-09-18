import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:paynstay/auth/selection.dart';
import 'package:paynstay/bottome/mainscreen.dart';
import 'package:paynstay/database/auth.dart';
import 'package:paynstay/search/searchresturant.dart';
import 'package:paynstay/userpages/profileinformation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () async {
                await AuthUtils().signInWithGoogle();
                await AuthUtils().socialLoginUser(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            SignInButton(
              Buttons.Facebook,
              text: "Sign up with Facebook",
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Finger Print',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ProfileDetail()));
              },
              child: Image.asset(
                'assets/finger.png',
                height: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
