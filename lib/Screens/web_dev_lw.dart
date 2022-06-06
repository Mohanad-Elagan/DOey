// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/login_screen.dart';
import 'package:flutter_auth/Screens/signup_screen.dart';
import 'package:flutter_auth/Screens/web_dev_exam.dart';
import 'package:flutter_auth/Screens/web_dev_learn.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import '../constants.dart';

class webdevlw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
        body:Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Web Development",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Learn to work",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return webdevlearn();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Pass an Exam to begin Work",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return webdevexam();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
