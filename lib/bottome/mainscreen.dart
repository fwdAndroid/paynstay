import 'package:flutter/material.dart';
import 'package:paynstay/bottome/booking.dart';
import 'package:paynstay/bottome/my_homepage.dart';
import 'package:paynstay/bottome/orders.dart';
import 'package:paynstay/bottome/user.dart';
import 'package:paynstay/search/searchresturant.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    MyHomePage(),
    SearchResturant(),
    Orders(),
    User(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = MyHomePage(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        MyHomePage(); // if user taps on this dashboard tab will be active
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/home.png',
                      height: 30,
                      width: 30,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 10,
                        color: currentTab == 0
                            ? Color(0xff0DC6DF)
                            : Color(0xff8d8282),
                      ),
                    )
                  ],
                ),
              ),

              //SearchResturant
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = SearchResturant();
                    // if user taps on this dashboard tab will be active
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.search),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 10,
                        color: currentTab == 1
                            ? Color(0xff0DC6DF)
                            : Color(0xff8d8282),
                      ),
                    )
                  ],
                ),
              ),

              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        Orders(); // if user taps on this dashboard tab will be active
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shopping_bag),
                    Text(
                      'Orders',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 10,
                        color: currentTab == 2
                            ? Color(0xff0DC6DF)
                            : Color(0xff8d8282),
                      ),
                    )
                  ],
                ),
              ),

              ///Create Orders
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        User(); // if user taps on this dashboard tab will be active
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.person),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Gilroy',
                        color: currentTab == 3
                            ? Color(0xff0DC6DF)
                            : Color(0xff8d8282),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
