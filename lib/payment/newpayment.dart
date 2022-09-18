import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/scan/scanorder.dart';
import 'package:paynstay/userpages/payment.dart';

class NewPayment extends StatefulWidget {
  const NewPayment({Key? key}) : super(key: key);

  @override
  State<NewPayment> createState() => _NewPaymentState();
}

class _NewPaymentState extends State<NewPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Payment Methods",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/Icon-Credit card.png",
              width: 100,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Dont Have any card\n:)",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "It seems like you not added any\n credit or debit card. You easily add",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 13),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Payment()));
                },
                child: Text(
                  'Add Credit Card',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                style: OutlinedButton.styleFrom(fixedSize: Size(150, 50)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
