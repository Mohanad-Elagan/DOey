// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/login_screen.dart';
import 'package:flutter_auth/Screens/signup_screen.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';

import '../constants.dart';
class creativeexam extends StatefulWidget {
  const creativeexam({Key key}) : super(key: key);

  @override
  _creativeexamState createState() => _creativeexamState();
}

class _creativeexamState extends State<creativeexam> {
  int _value = 1;
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
                  "Creative Writing Exam",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                Column(
                    children: <Widget>[
                      Text(
                        "1- What is the most important ingredient in Creative Writing?"),
                      SizedBox(height: size.height * 0.05),
                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: kPrimaryColor,
                            value: 1,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          Text('A) Imagination', style: TextStyle(color: Colors.black87),),
                        ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 2,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('B) Autobiographies', style: TextStyle(color: Colors.black87),),]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('C) Jokes', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 2,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('D) True stories', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Text(
                          "2. What is Creative Writing used for ?"),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('A) Any writing , say for example, complaint letter / letter to the forum / letter to your boss.', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 2,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('B) Any comedic writing.', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('C) Any sad or disastrous piece of writing.', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 2,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('D) Any writing - example novels / resumes / short stories / fiction writing.', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Text(
                          "3. What is the most important ingredient in Creative Writing ?"),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('A) Autobiographies', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 2,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('B) Imagination', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('C) True Stories', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 2,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('D) Jokes', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                       Text(
                          "4. What are Sensory Details ?"),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('A) Details that require common sense.', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 2,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('B) Details that involve sense and sensibility.', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('C) Details that involve your sight.', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Row(
                          children: <Widget>[
                            Radio(
                              activeColor: kPrimaryColor,
                              value: 2,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            Text('D) Details that involve your 5 senses - sight / hearing / taste / feel and smell.', style: TextStyle(color: Colors.black87),),
                          ]
                      ),
                      Text(
                          "5. Describe a simple writing technique."),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 1,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('A) choose a topic / decide on your details / write', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('B) choose an interesting topic / create your settings / write only once & publish.', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 1,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('C) Choose an interesting topic / create a list to support your topic / prioritize your list & write', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('D) choose a topic u like / create your details / publish', style: TextStyle(color: Colors.black87),),
                      Text(
                          "6. How to create an interesting setting ?"),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 1,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('A) Choose a scene / Discuss / Write everything u discussed.', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('B) Choose a scene / Visualise / Write what u had visualised.', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 1,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('C) Choose a scene / think very hard / write what you had thought about.', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('D) Choose a scene / Do lots of Research / Write what u had researched about.', style: TextStyle(color: Colors.black87),),
                      Text(
                          "7. How would you add character ?"),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 1,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('A) Focus on a person life story - the more disastrous the better.', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('B) Incorporate very sad stories', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 1,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('C) Invent as many interesting stories filled with humour.', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('D) Focus on a person, add such details as what that person would do or feel..', style: TextStyle(color: Colors.black87),),
                      Text(
                          "8. What else should be added to a story to capture the reader's interest ?"),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 1,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('A) Any writing , say for example, complaint letter / letter to the forum / letter to your boss.', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('B) Any comedic writing.', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 1,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('C) Any sad or disastrous piece of writing.', style: TextStyle(color: Colors.black87),),
                      Radio(
                        activeColor: kPrimaryColor,
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Text('D) Any writing - example novels / resumes / short stories / fiction writing.', style: TextStyle(color: Colors.black87),),
                     ]),
                RoundedButton(
                  text: "Submit",
                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          //return SignUpScreen();
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

