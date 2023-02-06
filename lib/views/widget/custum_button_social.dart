// ignore_for_file: prefer_const_constructors

import 'package:diopapp/views/view_auth/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String name;
  final String image;
  Function()? onpresseds;

  CustomButtonSocial(
      {required this.name, required this.image, required this.onpresseds});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        fixedSize: MaterialStatePropertyAll(Size(400, 40)),
        backgroundColor: MaterialStatePropertyAll(Colors.white),
      ),
      onPressed: onpresseds,
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(
            width: 50,
          ),
          CustomText(
            name: name,
            size: 15,
            couleur: Colors.blue,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
