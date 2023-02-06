// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:diopapp/constant.dart';
import 'package:diopapp/model/customtextbuttom.dart';
import 'package:diopapp/views/view_auth/login_controler.dart';
import 'package:diopapp/views/view_auth/second_screen.dart';
import 'package:diopapp/views/widget/custom_text.dart';
import 'package:diopapp/views/widget/custom_textfieldform.dart';
import 'package:diopapp/views/widget/custum_button_social.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 10, right: 20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                name: 'Welcome',
                size: 30,
              ),
              CustomText(
                name: 'Sign Up',
                size: 17,
                couleur: primaryColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextForm(
              text: 'Email',
              hint: 'please enter your email',
              onSave: (value) {},
              validator: (value) {}),
          SizedBox(
            height: 40,
          ),
          CustomTextForm(
              text: 'Password',
              hint: '*************',
              onSave: (value) {},
              validator: (value) {}),
          SizedBox(
            height: 10,
          ),
          CustomText(
            name: 'Forget Password',
            size: 15,
            alignment: Alignment.topRight,
          ),
          CustomTextButton(
            text: 'Sign In',
            onpresseds: () {
              Get.to(SecondScreen());
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
            name: '-OR-',
            size: 15,
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 40,
          ),
          CustomButtonSocial(
              onpresseds: () {
                Get.to(SecondScreen());
              },
              name: 'Sign In with Facebook',
              image: 'images/facebook.png'),
          SizedBox(
            height: 20,
          ),
          Obx(() {
            if (controller.googleAccount.value == null)
              return buildcontrollerbuttom();
            else
              return buildcustumtext();
          }),
        ]),
      ),
    );
  }

  CustomText buildcustumtext() {
    return CustomText(
      name: 'Sign in to continue',
      size: 15,
    );
  }

  CustomButtonSocial buildcontrollerbuttom() {
    return CustomButtonSocial(
        onpresseds: () {
          controller.Login();
        },
        name: 'Sign In with Google',
        image: 'images/g.png');
  }
}
