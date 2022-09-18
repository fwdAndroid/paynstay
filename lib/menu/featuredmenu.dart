import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/menu/food.dart';
import 'package:paynstay/menu/menudetail.dart';

class FeaturedMenu extends StatefulWidget {
  const FeaturedMenu({Key? key}) : super(key: key);

  @override
  State<FeaturedMenu> createState() => _FeaturedMenuState();
}

class _FeaturedMenuState extends State<FeaturedMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Food()));
            },
            icon: Icon(
              Icons.food_bank,
            ),
          ),
        ],
        title: Text(
          "Featured Partners",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MenuDetail()));
                    },
                    child: Card(
                      elevation: 10,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 1 / 1.4,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: 14,
                          itemBuilder: (BuildContext ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/sss.png',
                                        width: 300,
                                        height: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        'Chicken Burger',
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
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xffEEA734)),
                                            child: Center(
                                              child: Text(
                                                'Price :5\$',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Center(
                                              child: Text(
                                                '25 Min',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(child: Text("Tacos Nanchas"))
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
