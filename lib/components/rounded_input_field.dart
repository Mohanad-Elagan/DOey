// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final ValueChanged<String> onSaved;
  final TextEditingController controller;
  final FormFieldValidator valid;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onSaved,
    this.controller,
    this.valid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        onSaved: onSaved,
        cursorColor: kPrimaryColor,
        validator: valid,
        decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
