// ignore_for_file: prefer_const_constructors

import 'package:diopapp/constant.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  Function()? onpresseds;

  CustomTextButton({required this.text, required this.onpresseds});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onpresseds,
        style: TextButton.styleFrom(
          fixedSize: Size(350, 40),
          backgroundColor: primaryColor,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        //  ButtonStyle(
        //   fixedSize: MaterialStatePropertyAll(Size(400, 40)),
        //   backgroundColor: MaterialStatePropertyAll(primaryColor),
        // ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
