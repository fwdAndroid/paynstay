import 'package:cloud_firestore/cloud_firestore.dart';
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('resturants')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    return snapshot.hasData
                        ? CarouselSlider.builder(
                            itemCount: snapshot.data!.size,
                            options: CarouselOptions(
                                // height: 250,
                                autoPlay: true,
                                viewportFraction: 0.83,
                                enlargeCenterPage: true),
                            itemBuilder:
                                (BuildContext context, int index, int page) {
                              var ds = snapshot.data!.docs[index];
                              return ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    ds['photoURL'],
                                    fit: BoxFit.cover,
                                    width: MediaQuery.of(context).size.width,
                                  ));
                            },
                          )
                        : Center(child: Text("No Resturant Found"));
                  }),
              SizedBox(
                height: 10,
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
                height: 600,
                width: MediaQuery.of(context).size.width,
                child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('resturants')
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      return ListView.builder(
                          itemBuilder: (ctx, i) {
                            var ds = snapshot.data!.docs[i];
                            return snapshot.hasData
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                            ds['photoURL'],
                                            fit: BoxFit.cover,
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Text(
                                              ds['username'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: 20,
                                                  color: Color(0xff010F07)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 5),
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      color: Color(0xffEEA734)),
                                                  child: Center(
                                                    child: Text(
                                                      '5',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        right: 5),
                                                    child: Text(
                                                      ds['loc'],
                                                    )),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                : Text("No Resturant Found");
                          },
                          itemCount: 3);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
