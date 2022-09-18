import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Container(
                    child: Center(
                        child: Text(
                  'Payment Method',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ))),
                Text(''),
                Text('')
              ],
            ),
            zisttile(
                leadingIcon: Image.asset("assets/paypal.png"),
                subtitle: 'Default Payment',
                text: 'PayPal',
                function: () {}),
            Divider(),
            zisttile(
                leadingIcon: Image.asset("assets/master.png"),
                subtitle: 'Not Default',
                text: 'Master Card',
                function: () {}),
            Divider(),
            zisttile(
                leadingIcon: Image.asset("assets/cash.png"),
                subtitle: 'Not Default',
                text: 'Cash',
                function: () {}),
            Divider(),
          ],
        ),
      ),
    );
  }

  zisttile(
      {required String text,
      required VoidCallback function,
      required String subtitle,
      required Image leadingIcon}) {
    return ListTile(
      onTap: function,
      leading: leadingIcon,
      title: Text(
        text,
        style: TextStyle(
            color: Color(0xff010F07),
            fontWeight: FontWeight.w300,
            fontSize: 13),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
