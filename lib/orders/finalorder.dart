import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/scan/scanorder.dart';

class FinalOrd extends StatefulWidget {
  const FinalOrd({Key? key}) : super(key: key);

  @override
  State<FinalOrd> createState() => _FinalOrdState();
}

class _FinalOrdState extends State<FinalOrd> {
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
              height: MediaQuery.of(context).size.height / 2.6,
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
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 351,
                  height: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xffF8EDDC)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You Place the Order \nSuccessfully",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff010F07),
                              fontSize: 20,
                              fontWeight: FontWeight.w300)),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                            "You placed the order successfully. You will get your food within 25 minutes. Thanks for using our services. \nEnjoy your food :)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff010F07),
                                fontSize: 17,
                                fontWeight: FontWeight.w300)),
                      )
                    ],
                  ),
                ),
                Center(child: Image.asset('assets/icon-done.png'))
              ],
            )
          ],
        )));
    ;
  }
}
