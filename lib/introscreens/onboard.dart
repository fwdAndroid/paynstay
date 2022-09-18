import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:paynstay/auth/loginscreen.dart';
import 'package:paynstay/introscreens/screensone.dart';
import 'package:paynstay/introscreens/screensthree.dart';
import 'package:paynstay/introscreens/screenstwo.dart';

class OnBoardingScreens extends StatefulWidget {
  @override
  _OnBoardingScreensState createState() => _OnBoardingScreensState();
}

int currentPage = 0;

final _controller = PageController(initialPage: 0);
List<Widget> _pages = [
  Column(children: [Expanded(child: OnboardingScreenOne())]),
  Column(children: [Expanded(child: OnboardingScreenTwo())]),
  Column(children: [Expanded(child: OnboardingScreenThree())]),
];

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  @override
  Widget build(BuildContext context) {
    //  Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            children: _pages,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        DotsIndicator(
          dotsCount: _pages.length,
          position: currentPage.toDouble(),
          decorator: DotsDecorator(
            color: Colors.white, // Inactive color
            activeColor: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,  MaterialPageRoute(builder: (builder) => LoginScreen()));
            },
            child: Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              fixedSize: Size(335, 55)
            ),
          ),
        ),
        
      ],
    );
  }
}
