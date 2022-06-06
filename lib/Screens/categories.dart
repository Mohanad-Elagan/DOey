// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/creative_lw.dart';
import 'package:flutter_auth/Screens/web_dev_lw.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import '../constants.dart';

class categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
        body: Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Choose Your Work",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Creative Writing",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return creativelw();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Web Development",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return webdevlw();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    )
    );
  }
}
