// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: directives_ordering, unused_import, use_build_context_synchronously

import 'dart:convert';
import 'dart:async';
import 'package:finalproject/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/screens/catalog.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  LoginScreen createState() => LoginScreen();
}

class LoginScreen extends State<Login> {
  // Map<String, dynamic> response;
  bool visible = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future userLogin() async {
    setState(() {
      visible = true;
    });
    // SERVER LOGIN API URL

    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    String url = "http://10.10.0.252/login.php";
    var response = await http.post(Uri.parse(url), body: {
      "email": emailController.text,
      "password": passwordController.text,
    });
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      setState(() {
        visible = false;
      });
      await showDialog<Widget>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Login Completed",
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("ตกลง"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      await (Navigator.push<String>(
          context, MaterialPageRoute(builder: (context) => Test())));
    } else {
      setState(() {
        visible = false;
      });
      await showDialog<Widget>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Invalid Username or Password",
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("ตกลง"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    // Navigate to Profile Screen & Sending Email to Next Screen.

    //   // Showing Alert Dialog with Response JSON Message.
    //   await showDialog<Widget>(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: Text(
    //           result['message'].toString(),
    //         ),
    //         actions: <Widget>[
    //           TextButton(
    //             child: const Text("ตกลง"),
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //           ),
    //         ],
    //       );
    //     },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 70,
              ),
              // Image.asset(
              //   "images/W.png",
              //   width: 50,
              //   height: 50,
              // ),
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  'เข้าสู่ระบบ',
                  style: TextStyle(fontSize: 21),
                ),
              ),
              Divider(),

              //กล่องอีเมลล์
              const Text('* ใช้อีเมลล์นี้เท่านั้น : user@msu.ac.th',
                  style: TextStyle(color: Colors.red, fontSize: 16)),
              Container(
                width: 300,
                height: 70,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: emailController,
                  autocorrect: true,
                  decoration: const InputDecoration(
                    labelText: 'ป้อนอีเมล์ของคุณที่นี่',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    suffixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //กล่องรหัสผ่าน
              const Text(
                '*** ใช้รหัสผ่านนี้เท่านั้น : abc123',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
              Container(
                width: 300,
                height: 70,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: passwordController,
                  autocorrect: true,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'ป้อนรหัสผ่านของคุณที่นี่',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    suffixIcon: Icon(
                      Icons.security,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              ElevatedButton.icon(
                label: Text('เข้าสู่ระบบ'),
                onPressed: () => userLogin(),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[850],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
                icon: Icon(Icons.login_outlined),
              ),
              Visibility(
                visible: visible,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
