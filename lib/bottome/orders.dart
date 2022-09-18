import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/orders/reconfrimorder.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            'Your Orders',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcomming Orders',
                    style: TextStyle(
                        color: Color(0xff868686),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'Clear All',
                    style: TextStyle(
                        color: Color(0xff868686),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/image.png',
                                  width: 140,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'KFC',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (builder) => ReconfirmOrder()));
                                      },
                                      child: Image.asset(
                                        'assets/scan.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Shortbread, chocolate turtle \n cookies, and red velvet.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$\$"),
                                    Text('Italian'),
                                    Text(''),
                                    Text('\$10AUD')
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Past Orders',
                    style: TextStyle(
                        color: Color(0xff868686),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'Clear All',
                    style: TextStyle(
                        color: Color(0xff868686),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/image.png',
                                  width: 140,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'KFC',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/scan.png',
                                      width: 25,
                                      height: 25,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Shortbread, chocolate turtle \n cookies, and red velvet.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$\$"),
                                    Text('Italian'),
                                    Text(''),
                                    Text('\$10AUD')
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        )));
  }
}
