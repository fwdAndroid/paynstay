import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:paynstay/auth/selection.dart';
import 'package:paynstay/database/storagemethods.dart';
import 'package:paynstay/models/profile_model.dart';
import 'package:paynstay/utils/utils.dart';

class AuthUtils {
  //Register User with Add User
  Future<String> signUpUser(
      {required String email,
      required String pass,
      required String phoneNumber,
      required String username,
      required Uint8List file}) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty ||
          pass.isNotEmpty ||
          phoneNumber.isNotEmpty ||
          username.isNotEmpty) {
        UserCredential cred = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: pass);
        String photoURL = await StorageMethods()
            .uploadImageToStorage('ProfilePics', file, false);
        //Add User to the database with modal
        ProfileModel userModel = ProfileModel(
            fullName: username,
            uid: cred.user!.uid,
            email: email,
            phoneNumber: phoneNumber,
            photoURL: photoURL,
           );
        await FirebaseFirestore.instance
            .collection('users')
            .doc(cred.user!.uid)
            .set(userModel.toJson());
        res = 'sucess';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  registerUser(
      String userName,
      String email,
      String password,
      String dob,
      String gender,
      String phoneNumber,
      String imageLink,
      BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .set({
          "id": FirebaseAuth.instance.currentUser!.uid,
          'UserName': userName,
          'Email': email,
          "DOB": dob,
          "Gender": gender,
          "Phone Number": phoneNumber, "imageLink": imageLink,
          "status": "offline" // 'Password':password
        }).then((value) {
          showSnakBar("Logged in", context);
          // Provider.of<CircularProgressProvider>(context,listen: false).setValue(false);
          closeDialog(context);
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (_) => Selection()), (route) => false);
        });
      }).catchError((onError) {
        throw onError;
      });
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      showBox(context, e.toString());
    }
  }

  loginUser(String email, String password, BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        FirebaseFirestore.instance
            .collection('users')
            .where('Email', isEqualTo: email)
            .where('Password', isEqualTo: password)
            .get()
            .then((value) {
          showSnakBar("Logged in", context);
          // Provider.of<CircularProgressProvider>(context,listen: false).setValue(false);
          closeDialog(context);
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (_) => Selection()), (route) => false);
        });
      }).catchError((onError) {
        throw onError;
      });
    } catch (e) {
      Navigator.pop(context);
      showBox(context, e.toString());
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  socialLoginUser(BuildContext context) async {
    String userName = FirebaseAuth.instance.currentUser!.displayName.toString();
    String email = FirebaseAuth.instance.currentUser!.email.toString();
    String dob = "";
    String gender = "";
    String phoneNumber =
        FirebaseAuth.instance.currentUser!.phoneNumber.toString();
    String imageLink = FirebaseAuth.instance.currentUser!.photoURL.toString();
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        "id": FirebaseAuth.instance.currentUser!.uid,
        'UserName': userName,
        'Email': email,
        "DOB": dob,
        "Gender": gender,
        "Phone Number": phoneNumber,
        "imageLink": imageLink,
        "status": "offline" // 'Password':password
      }).then((value) {
        showSnakBar("Logged in", context);
        // Provider.of<CircularProgressProvider>(context,listen: false).setValue(false);
        closeDialog(context);
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => Selection()), (route) => false);
      });
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      showBox(context, e.toString());
    }
  }
}
