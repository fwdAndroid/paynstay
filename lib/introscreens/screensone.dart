import 'package:flutter/material.dart';

class OnboardingScreenOne extends StatefulWidget {
  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    //it will helps to return the size of the screen
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/circlebackground.png'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pay'n'Stay",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 37,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      'assets/image.png',
                    ),
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                'Welcome',
                style: TextStyle(
                    color: Color(0xff3A3A3A),
                    fontSize: 27,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xff3A3A3A),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )),
    );
  }
}
