import 'package:flutter/material.dart';

class OnboardingScreenThree extends StatefulWidget {
  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    //it will helps to return the size of the screen
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pay'n'Stay",
            style: TextStyle(
                color: Colors.black, fontSize: 37, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  'assets/expert.png',
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            'All Your Favourites',
            style: TextStyle(
                color: Color(0xff3A3A3A),
                fontSize: 27,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            'Order from the best local restaurants with easy, on-demand delivery.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      )),
    );
  }
}
