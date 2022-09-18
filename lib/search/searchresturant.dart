import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchResturant extends StatefulWidget {
  const SearchResturant({Key? key}) : super(key: key);

  @override
  State<SearchResturant> createState() => _SearchResturantState();
}

class _SearchResturantState extends State<SearchResturant> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Search',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    border: InputBorder.none,
                    hintText: 'Search on foodly',
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    fillColor: Colors.grey.shade100,
                    contentPadding: const EdgeInsets.only(top: 15.0),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 1 / 1.4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: 100,
                    itemBuilder: (BuildContext ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
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
                                  height: 4,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('\$\$\$'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Chineese')
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
