import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/payment/confrim_payment.dart';

class ConfrimOrder extends StatefulWidget {
  const ConfrimOrder({Key? key}) : super(key: key);

  @override
  State<ConfrimOrder> createState() => _ConfrimOrderState();
}

class _ConfrimOrderState extends State<ConfrimOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.cancel),
        ),
        title: Text(
          'Confrim Order',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          leading: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff868686))),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(color: Color(0xffF8B64C)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          trailing: const Text(
                            "AUD\$10",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            "Shortbread, chocolate turtle cookies, and red velvet.",
                            style: TextStyle(
                                color: Color(0xff010F07),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          title: Text(
                            "Cookie Sandwich",
                            style: TextStyle(
                                color: Color(0xff010F07),
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          )),
                    );
                  }),
            ),
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
                        'VAT',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      "10%",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
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
                        'Total',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      "30\$",
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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add More Items',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Promo Codes',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => ConfrimPayment()));
                  },
                  child: Text('CONTINUE 30\$'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black, fixedSize: Size(335, 48)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
