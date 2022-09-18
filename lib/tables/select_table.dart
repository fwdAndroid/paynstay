import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/menu/menu_detail_page.dart';

class SelectFloor extends StatefulWidget {
  const SelectFloor({Key? key}) : super(key: key);

  @override
  State<SelectFloor> createState() => _SelectFloorState();
}

class _SelectFloorState extends State<SelectFloor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Select Table",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                margin: EdgeInsets.all(6),
                child: ListTile(
                  title: Text(
                    'Ground Floor',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    'Select ground floor to access your \nfavorite table, and delicious food.',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  trailing: IconButton(
                    icon: Image.asset('assets/scan.png'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MenuDetailPage()));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                margin: EdgeInsets.all(6),
                child: ListTile(
                  title: Text(
                    'First Floor',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    'Select first floor to access your \nfavorite table, and delicious food.',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  trailing: IconButton(
                    icon: Image.asset('assets/scan.png'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MenuDetailPage()));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 0,
                  margin: EdgeInsets.all(6),
                  child: ListTile(
                    title: Text(
                      'Second Floor',
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      'Select second floor to access your \nfavorite table, and delicious food.',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    trailing: IconButton(
                      icon: Image.asset('assets/scan.png'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => MenuDetailPage()));
                      },
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 0,
                  margin: EdgeInsets.all(6),
                  child: ListTile(
                    title: Text(
                      'Third Floor',
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      'Select third floor to access your \nfavorite table, and delicious food.',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    trailing: IconButton(
                      icon: Image.asset('assets/scan.png'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => MenuDetailPage()));
                      },
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 0,
                  margin: EdgeInsets.all(6),
                  child: ListTile(
                    title: Text(
                      'Roof Top',
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      'Select roof top to access your \nfavorite table, and delicious food.',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    trailing: IconButton(
                      icon: Image.asset('assets/scan.png'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => MenuDetailPage()));
                      },
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
