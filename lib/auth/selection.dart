import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/bottome/mainscreen.dart';
import 'package:paynstay/bottome/my_homepage.dart';
import 'package:paynstay/bottome/user.dart';
import 'package:paynstay/scan/scanorder.dart';

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ScanOrders()));
              },
              child: Text(
                'Scan QR CODE',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: OutlinedButton.styleFrom(fixedSize: Size(300, 50)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => MyHomePage()));
              },
              child: Text(
                'Resturants',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: OutlinedButton.styleFrom(fixedSize: Size(300, 50)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => User()));
              },
              child: Text(
                'Services',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: OutlinedButton.styleFrom(fixedSize: Size(300, 50)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => User()));
              },
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: OutlinedButton.styleFrom(fixedSize: Size(300, 50)),
            ),
          )
        ],
      ),
    ));
  }
}
