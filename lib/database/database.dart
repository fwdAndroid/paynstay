import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:paynstay/database/storagemethods.dart';
import 'package:paynstay/models/profile_model.dart';
import 'package:uuid/uuid.dart';

class FirebaseDataBase {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  // Future<String> profileDetail({
  //   required String email,
  //   // required String uid,
  //   required String fullName,
  //   required String dob,
  //   required String phone,
  //   // required Uint8List file,
  // }) async {
  //   String res = 'Some error occured';

  //   try {
  //     if (email.isNotEmpty || fullName.isNotEmpty) {
  //       // String photoURL = await StorageMethods()
  //       //     .uploadImageToStorage('ProfilePics', file, false);
  //       //Add User to the database with modal
  //       ProfileModel userModel = ProfileModel(
  //         date: dob,
  //         email: email,
  //         phoneNumber: phone,
  //         fullName: fullName,
  //         // photoURL: photoURL,
  //         // uid: id
  //       );
  //       await firebaseFirestore
  //           .collection('profile')
  //           .doc("id")
  //           .set(userModel.toJson());
  //       res = 'success';
  //     }
  //   } catch (e) {
  //     res = e.toString();
  //   }
  //   return res;
  // }
}
