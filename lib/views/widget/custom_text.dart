// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String name;
  double size;
  final Color couleur;
  final Alignment alignment;

  CustomText({
    required this.name,
    required this.size,
    this.couleur = Colors.grey,
    this.alignment = Alignment.topLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        name,
        style: TextStyle(
          fontSize: size,
          color: couleur,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
