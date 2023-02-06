// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextForm extends StatelessWidget {
  final String text;
  final String hint;
  final Function onSave;
  final Function validator;

  CustomTextForm(
      {required this.text,
      required this.hint,
      required this.onSave,
      required this.validator});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(name: text, size: 15),
          TextFormField(
            onSaved: onSave('value'),
            validator: validator('value'),
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey),
                fillColor: Colors.white),
          ),
        ],
      ),
    );
  }
}
