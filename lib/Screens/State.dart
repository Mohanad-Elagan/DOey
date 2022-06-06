// @dart = 2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Model/user_model.dart';
import 'package:flutter_auth/Screens/categories.dart';
import 'package:flutter_auth/Screens/signup_screen.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class state extends StatefulWidget {
  const state({Key key}) : super(key: key);

  @override
  _stateState createState() => _stateState();
}

class _stateState extends State<state> {
  User user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if(loggedInUser.state == 'Free Lancer'){
      return Scaffold(
          body:Background(
            child: SingleChildScrollView(
              child: categories()),
          ));
    }
    else if(loggedInUser.state == 'Looking for workers'){
      return Scaffold(
        body:Background(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: size.height * 0.45,
                ),
              ],
            ),
          ),
        ));
    }
  }
}

