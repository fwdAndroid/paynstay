import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Browse Foods",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ),
            itemCount: 3),
      ),
    );
  }
}
