import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileModel {
  String fullName;
  String email;
  String uid;
  String phoneNumber;
  String photoURL;

  ProfileModel({
    required this.fullName,
    required this.email,
    required this.uid,
    required this.photoURL,
    required this.phoneNumber,
  });

  ///Converting OBject into Json Object
  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'email': email,
        'phoneNumber': phoneNumber,
        'uid': uid,
        'photoURL': photoURL
      };

  ///
  static ProfileModel fromSnap(DocumentSnapshot snaps) {
    var snapshot = snaps.data() as Map<String, dynamic>;

    return ProfileModel(
        fullName: snapshot['fullName'],
        email: snapshot['email'],
        uid: snapshot['uid'],
        phoneNumber: snapshot['phoneNumber'],
        photoURL: snapshot['photoURL']);
  }
}
