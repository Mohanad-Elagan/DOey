// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';

import '../constants.dart';
class RoundedPasswordField extends StatelessWidget {
  final String hintext;
  final TextEditingController controller;
  final ValueChanged<String> onSaved;
  const RoundedPasswordField({
    Key key,
    this.onSaved, this.hintext, this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        obscureText: true,
        onSaved: onSaved,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintext,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
