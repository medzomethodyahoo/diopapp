// ignore_for_file: prefer_const_constructors

import 'package:diopapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        alignment: Alignment.bottomCenter,
        height: 500,
        decoration: BoxDecoration(color: Colors.white),
        child: buildsecondscreen(),
      ),
    );
  }

  Text buildsecondscreen() {
    return Text(
      'Second Page',
    );
  }
}
