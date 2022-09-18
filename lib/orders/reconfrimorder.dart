import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/orders/finalorder.dart';

class ReconfirmOrder extends StatefulWidget {
  const ReconfirmOrder({Key? key}) : super(key: key);

  @override
  State<ReconfirmOrder> createState() => _ReconfirmOrderState();
}

class _ReconfirmOrderState extends State<ReconfirmOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          title: Text(
            "McDonald's",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(7),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/num.png',
                            height: 30,
                            width: 40,
                          ),
                          title: Text(
                            'KFC',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          subtitle: Text(
                            'Shortbread, chocolate turtle \n cookies, and red velvet.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: Text(
                            "AUD\$10",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ));
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'SubTotal',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      "AUD\$10",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 6,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Delivery',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      "0",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 6,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Total (incl VAT)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      "AUD30\$",
                      style: TextStyle(
                          color: Color(0xffF8B64C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Text(
                "Add More Items",
                style: TextStyle(
                    color: Color(0xffF8B64C),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Text(
                "Promo Code",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => FinalOrd()));
                  },
                  child: Text('Checkout (AUD30\$)'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black, fixedSize: Size(335, 48)),
                ),
              ),
            )
          ],
        )));
  }
}
