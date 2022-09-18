// import 'package:college_meet/BottomNavigatonBar/Screens/Edit%20User/edit_User.dart'
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:paynstay/userpages/payment.dart';
import 'package:paynstay/userpages/profileinformation.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  zisttile(
      {required String text,
      required IconData icon,
      required VoidCallback function,
      required String subtitle,
      required IconData leadingIcon}) {
    return ListTile(
        onTap: function,
        leading: Icon(leadingIcon),
        title: Text(
          text,
          style: TextStyle(
              color: Color(0xff010F07),
              fontWeight: FontWeight.w300,
              fontSize: 13),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 10),
        ),
        trailing: IconButton(onPressed: function, icon: Icon(icon)));
  }

  @override
  Widget build(BuildContext context) {
    bool status = false;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'Account Settings',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'Update your settings like notifications, \npayments, profile edit etc.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                zisttile(
                    leadingIcon: Icons.person,
                    subtitle: 'Change your account information',
                    icon: Icons.arrow_forward_ios,
                    text: 'Profile',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ProfileDetail()));
                    }),
                Divider(),
                zisttile(
                    leadingIcon: Icons.payment,
                    subtitle: 'Add your credit cards & debit cards',
                    icon: Icons.arrow_forward_ios,
                    text: 'Payment Methods',
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Payment()));
                    }),
                Divider(),
                zisttile(
                    leadingIcon: Icons.location_pin,
                    subtitle: 'Add Your Location',
                    icon: Icons.arrow_forward_ios,
                    text: 'Locations',
                    function: () {}),
                Divider(),
                zisttile(
                    leadingIcon: Icons.mediation,
                    subtitle: 'Add Social Account',
                    icon: Icons.arrow_forward_ios,
                    text: 'Add Facebook and Twitter etc',
                    function: () {}),
                Divider(),
                zisttile(
                    leadingIcon: Icons.refresh,
                    subtitle: 'Refer To Friend',
                    icon: Icons.arrow_forward_ios,
                    text: 'Refer To Friend',
                    function: () {}),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    leading: Icon(Icons.notifications),
                    subtitle: Text('For Daily Update you will gets'),
                    trailing: Container(
                      width: 10,
                      height: 10,
                      child: FlutterSwitch(
                        width: 125.0,
                        height: 55.0,
                        valueFontSize: 25.0,
                        toggleSize: 45.0,
                        value: status,
                        borderRadius: 30.0,
                        padding: 8.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ),
                    title: Text('Push Notifications'),
                    onTap: () {}),
                ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Log Out'),
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
