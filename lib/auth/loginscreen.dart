import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:local_auth/local_auth.dart';
import 'package:paynstay/auth/email_auth.dart';
import 'package:paynstay/database/auth.dart';
import 'package:paynstay/userpages/profileinformation.dart';
import 'package:toast/toast.dart';

enum _SupportState {
  unknown,
  supported,
  unsupported,
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LocalAuthentication auth = LocalAuthentication();

  bool _isAuthenticating = false;
  String _authorized = 'Not Authorized';
  _SupportState _supportState = _SupportState.unknown;

  //Biometric functions
  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason:
            'Scan your fingerprint (or face or whatever) to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => EmailAuth()));
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
  }

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
              ? _SupportState.supported
              : _SupportState.unsupported),
        );
  }

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
              onTap: () async {
                await _authenticateWithBiometrics();
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
