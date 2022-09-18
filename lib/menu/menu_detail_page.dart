import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/orders/confrim_order.dart';

enum BestTutorSite { ChocolateChip, w3schools, tutorialandexample }

class MenuDetailPage extends StatefulWidget {
  const MenuDetailPage({Key? key}) : super(key: key);

  @override
  State<MenuDetailPage> createState() => _MenuDetailPageState();
}

class _MenuDetailPageState extends State<MenuDetailPage> {
  BestTutorSite _site = BestTutorSite.ChocolateChip;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/header.png',
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.white,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cookie Sandwich',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Image.asset(
                      "assets/scan.png",
                      height: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Text(
                      'Shortbread, chocolate turtle cookies and red\valvet 9 ocines cheese, softend.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
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
                            width: 8,
                          ),
                          Text(
                            'Deshi Food',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Fries',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Coke',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Pizza',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Wine',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choice of top Cookie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('Required'),
                      style:
                          OutlinedButton.styleFrom(primary: Color(0xffF8B64C)),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: const Text('Chocolate Chip.'),
                    leading: Radio(
                      value: BestTutorSite.ChocolateChip,
                      groupValue: _site,
                      onChanged: (BestTutorSite? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: const Text('Ice Creame'),
                    leading: Radio(
                      value: BestTutorSite.w3schools,
                      groupValue: _site,
                      onChanged: (BestTutorSite? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: const Text('Milk Shake'),
                    leading: Radio(
                      value: BestTutorSite.tutorialandexample,
                      groupValue: _site,
                      onChanged: (BestTutorSite? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choice of bottom Cookie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('Required'),
                      style:
                          OutlinedButton.styleFrom(primary: Color(0xffF8B64C)),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: const Text('Chocolate Chip.'),
                    leading: Radio(
                      value: BestTutorSite.ChocolateChip,
                      groupValue: _site,
                      onChanged: (BestTutorSite? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: const Text('Ice Creame'),
                    leading: Radio(
                      value: BestTutorSite.w3schools,
                      groupValue: _site,
                      onChanged: (BestTutorSite? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: const Text('Milk Shake'),
                    leading: Radio(
                      value: BestTutorSite.tutorialandexample,
                      groupValue: _site,
                      onChanged: (BestTutorSite? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add Special Instructions',
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/sub.png',
                        height: 70,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('01'),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/sad.png',
                        height: 70,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ConfrimOrder()));
                    },
                    child: Text('SCAN TO MAKE ORDER'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, fixedSize: Size(335, 48)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
