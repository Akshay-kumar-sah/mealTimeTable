//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../accountPage.dart';
import './start_timer.dart';
import './OTPpage.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({Key? key,this.title}) : super(key: key);
  //final String title;
  static const routeName = "loginPage";
  @override
  State<LoginPage> createState() => _LoginPageState();
  //final  const MediaQuery height  = MediaQuery.height;
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controller = TextEditingController();
  // startTimer y = startTimer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: 200,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('Phone Number'),
              ),
              maxLength: 10,
              keyboardType: TextInputType.number,
              controller: _controller,
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed(OTPphone.routeName);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OTPphone(_controller.text),
                  ));
                 
                },
            
                child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
