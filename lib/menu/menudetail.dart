import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/search/searchresturant.dart';
import 'package:paynstay/tables/select_table.dart';

class MenuDetail extends StatefulWidget {
  const MenuDetail({Key? key}) : super(key: key);

  @override
  State<MenuDetail> createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset('assets/image.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon:
                              Icon(Icons.arrow_back_ios, color: Colors.white)),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => SearchResturant()));
                          },
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Chicken Fries',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Italain',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Deshi Food',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Fries',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Coke',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Price: 14\$',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Time: 25 Min',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => SelectFloor()));
                        },
                        child: Text('Select Table'))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Featured Menus',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 230,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, i) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/sss.png',
                                height: 150,
                              ),
                              SizedBox(height: 5),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  'KFC',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 20,
                                      color: Color(0xff010F07)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Hay street, Perth City',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 15,
                                      color: Color(0xff010F07)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.height / 4,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      width: 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Color(0xffEEA734)),
                                      child: Center(
                                        child: Text(
                                          '5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(right: 5),
                                        child: Text('25 KM Away')),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                    itemCount: 10),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Resturants',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Color(0xffEEA734)),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemBuilder: (ctx, i) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/sss.png',
                                  height: 150,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 5),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'KFC',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 20,
                                        color: Color(0xff010F07)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Hay street, Perth City',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 15,
                                        color: Color(0xff010F07)),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        width: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Color(0xffEEA734)),
                                        child: Center(
                                          child: Text(
                                            '5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(right: 5),
                                          child: Text('25 KM Away')),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                    itemCount: 3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
