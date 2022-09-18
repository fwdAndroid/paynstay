import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:paynstay/menu/featuredmenu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List Carousel = [
      'assets/image.png',
      'assets/image.png',
      'assets/image.png',
      'assets/image.png',
      'assets/image.png',
    ];
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => FeaturedMenu()));
              },
              child: CarouselSlider.builder(
                itemCount: Carousel.length,
                options: CarouselOptions(
                    // height: 250,
                    autoPlay: true,
                    viewportFraction: 0.83,
                    enlargeCenterPage: true),
                itemBuilder: (BuildContext context, int index, int page) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      Carousel[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Resturants',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
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
                                        borderRadius: BorderRadius.circular(12),
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
              height: MediaQuery.of(context).size.height / 3,
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
      ),
    );
  }
}
