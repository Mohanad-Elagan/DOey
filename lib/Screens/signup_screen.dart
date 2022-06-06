// @dart = 2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Model/freelancer_model.dart';
import 'package:flutter_auth/Model/hirer_model.dart';
import 'package:flutter_auth/Model/user_model.dart';
import 'package:flutter_auth/Screens/login_screen.dart';
import 'package:flutter_auth/components/Toast.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';

import 'State.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = new GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  String errorMessage;

  final conName = TextEditingController();
  final conAge = TextEditingController();
  final conBio = TextEditingController();
  final conMail = TextEditingController();
  final conPass = TextEditingController();
  final conCPass = TextEditingController();

  void signUp(String mail, String pass) async {
    if (_formKey.currentState.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: mail, password: pass)
            .then((value){postDetailsToFirestore();
            if(state == 'Free Lancer'){
              postLancerToFirestore();
            }else if(state == 'Looking for workers'){
              postHirersToFirestore();
            }
            })
            .catchError((e) {
          print(e);
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            alertDialog(context, "Your email address appears to be malformed");
            break;
          case "wrong-password":
            alertDialog(context, "Your password is wrong");
            break;
          case "user-not-found":
            alertDialog(context, "User with this email doesn't exist");
            break;
          case "user-disabled":
            alertDialog(context, "User with this email has been disabled");
            break;
          case "too-many-requests":
            alertDialog(context, "Too many requests");
            break;
          case "operation-not-allowed":
            alertDialog(context, "Signing in with Email and Password is not enabled");
            break;
          case "Password should be at least 6 characters":
            alertDialog(context, "Your Name mustn't be less than 6 characters");
            break;
          default:
            alertDialog(context, "An undefined Error happened.");
        }
        print(errorMessage);
        print(error.code);
      }
    }
  }
  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User user = _auth.currentUser;
    UserModel userModel = UserModel();

    userModel.mail = user.email;
    userModel.uid = user.uid;
    userModel.name = conName.text;
    userModel.age = conAge.text;
    userModel.bio = conBio.text;
    userModel.sex = sex;
    userModel.state = state;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    print ("Account created successfully :) ");

  }
  postLancerToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User user = _auth.currentUser;
    Lancer lancer = Lancer();

    lancer.uid = user.uid;
    lancer.name = conName.text;
    lancer.rate = rate;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(lancer.toMap());
    print ("Account created successfully :) ");

  }
  postHirersToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User user = _auth.currentUser;
    Hire hire = Hire();

    hire.uid = user.uid;
    hire.name = conName.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(hire.toMap());
    print ("Account created successfully :) ");

  }

  String rate = '0';
  String state = 'Free Lancer';
  String sex = 'Male';
  int _value = 0;
  int _val = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
         child: Form(
             key: _formKey,
             child: SingleChildScrollView(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "SIGNUP",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundedInputField(controller: conName, icon: Icon(Icons.account_circle, color: kPrimaryColor),
                    hintText: "Name",
                    onSaved: (value) {
                      conName.text = value;
                    },
                  ),
                  RoundedInputField(controller: conAge, icon: Icon(Icons.height, color: kPrimaryColor),
                    hintText: "Age",
                    onSaved: (value) {
                      conAge.text = value;
                      },
                  ),
                  RoundedInputField(controller: conBio, icon: Icon(Icons.person_search, color: kPrimaryColor),
                    hintText: "Bio",
                    onSaved: (value) {
                      conBio.text = value;
                    },
                  ),
                  RoundedInputField(controller: conMail, icon: Icon(Icons.mail, color: kPrimaryColor),
                    hintText: "Your Email",
                    onSaved: (value) {
                      conMail.text = value;
                    },
                    valid: (value){
                      if (value.isEmpty) {
                        return ("Please Enter Your Email");
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return ("Please Enter a valid email");
                      }
                      return null;
                    },
                  ),
                  RoundedPasswordField(
                    controller: conPass,
                    hintext: "Password",
                    onSaved: (value) {
                      conPass.text = value;
                      },
                  ),
                  RoundedPasswordField(
                    controller: conCPass,
                    hintext: "Confirm Password",
                    onSaved: (value) {
                      conCPass.text = value;
                    },
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Radio(
                                  activeColor: kPrimaryColor,
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value){
                                    setState(() {
                                      state = "Free Lancer";
                                      _value = value;
                                    });
                                  },
                                ),
                                Text('Free Lancer', style: TextStyle(color: Colors.black87),),
                          ],
                        ),
                            Row(
                              children: <Widget>[
                                Radio(
                                  activeColor: kPrimaryColor,
                                  value: 1,
                                  groupValue: _val,
                                  onChanged: (value){
                                    setState(() {
                                      sex = "Male";
                                      _val = value;
                                    });
                                  },
                                ),
                                Text('Male           ', style: TextStyle(color: Colors.black87),),
                              ],
                            )
                        ]
                        ),
                        Column(
                            children:<Widget>[
                                    Column(
                                        children: [
                                          Row(
                                            children: <Widget>[
                                              Radio(
                                                activeColor: kPrimaryColor,
                                                value: 2,
                                                groupValue: _value,
                                                onChanged: (value){
                                                  setState(() {
                                                    state = "Looking for workers";
                                                    _value = value;
                                                  });
                                                },
                                              ),
                                              Text('Looking for workers', style: TextStyle(color: Colors.black87),)
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Radio(
                                                activeColor: kPrimaryColor,
                                                value: 2,
                                                groupValue: _val,
                                                onChanged: (value){
                                                  setState(() {
                                                    sex = "Female";
                                                    _val = value;
                                                  });
                                                },
                                              ),
                                              Text('Female                      ', style: TextStyle(color: Colors.black87),)                      ],
                                          )
                                        ]
                                    ),
                            ]
                        ),
                      ]
                  ),

                  RoundedButton(
                    text: "SIGNUP",
                    press: () {
                      signUp(conMail.text, conPass.text);
                    },
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    login: false,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      );
    }
  }