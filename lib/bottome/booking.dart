import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Bookings'),
        bottom: const TabBar(
          labelPadding: EdgeInsets.all(12),
          tabs: <Widget>[
            Tab(
              text: 'Current Appointments',
            ),
            Tab(
              text: 'Past Appointments',
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Text("sfafwa"),
          Text("sfafwa"),
        ],
      ),
    );
  }
}
