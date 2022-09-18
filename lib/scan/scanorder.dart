import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynstay/menu/menu_detail_page.dart';
import 'package:paynstay/tables/select_table.dart';

class ScanOrders extends StatefulWidget {
  const ScanOrders({Key? key}) : super(key: key);

  @override
  State<ScanOrders> createState() => _ScanOrdersState();
}

class _ScanOrdersState extends State<ScanOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => MenuDetailPage()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/sca.png",
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )),
                Spacer(),
                Center(
                  child: Text(
                    'Scan Your QR CODE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text(
                    'Just my luck, no ice. Must go faster.\nDid he just throw my cat out of the window',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(),
                Spacer(),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
