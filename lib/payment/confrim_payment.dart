import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/bottome/mainscreen.dart';
import 'package:paynstay/bottome/orders.dart';
import 'package:paynstay/payment/newpayment.dart';

class ConfrimPayment extends StatefulWidget {
  const ConfrimPayment({Key? key}) : super(key: key);

  @override
  State<ConfrimPayment> createState() => _ConfrimPaymentState();
}

class _ConfrimPaymentState extends State<ConfrimPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => NewPayment()));
          },
          child: Center(
            child: Text(
              'Add Payment Method',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            'This card will only be charged when \n you place an order.',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: Image.asset(
            'assets/paypal.png',
            width: 174,
            height: 133,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: Text("OR"),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: OutlinedButton(
            onPressed: () {},
            child: Text('CASH'),
            style: OutlinedButton.styleFrom(fixedSize: Size(225, 48)),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => Orders()));
              },
              child: Text('CONFRIM ORDER'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, fixedSize: Size(335, 48)),
            ),
          ),
        )
      ])),
    );
  }
}
