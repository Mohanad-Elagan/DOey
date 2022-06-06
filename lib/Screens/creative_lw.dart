// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import '../constants.dart';
import 'creative_exam.dart';
import 'creative_learn.dart';

class creativelw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Creative Writing",
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
                        return creativeexam();
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
                        return creativelearn();
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
