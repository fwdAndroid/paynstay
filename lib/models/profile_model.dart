import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileModel {
  String fullName;
  String email;
  String date;
  String phoneNumber;
  // String photoURL;

  ProfileModel({
    required this.fullName,
    required this.email,
    required this.date,
    // required this.photoURL,
    required this.phoneNumber,
  });

  ///Converting OBject into Json Object
  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'email': email,
        'phoneNumber': phoneNumber,
        // 'photoURL': photoURL,
        'date': date,
      };

  ///
  static ProfileModel fromSnap(DocumentSnapshot snaps) {
    var snapshot = snaps.data() as Map<String, dynamic>;

    return ProfileModel(
      date: snapshot['date'],
      fullName: snapshot['fullName'],
      email: snapshot['email'],
      // photoURL: snapshot['photoURL'],
      phoneNumber: snapshot['phoneNumber'],
    );
  }
}
