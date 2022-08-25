import 'dart:async';
//import 'dart:ffi';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealtimetable/myHomePage.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pinput/pinput.dart';
import './loginPage.dart';
import './start_timer.dart';

class OTPphone extends StatefulWidget {
  //OTPphone({Key? key}) : super(key: key);

  final String phone;
  OTPphone(this.phone);
  static const routeName = "OTPphone";

  @override
  State<OTPphone> createState() => _OTPphoneState();
}

class _OTPphoneState extends State<OTPphone> {
  get errorController => null;
  
  @override
  void initState() {
    super.initState();
    sendOTP();
  }

  sendOTP() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91${widget.phone}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) async {
          if (value.user != null) {
            Navigator.of(context).pushNamed(MyHomePage.routeName);
          }
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        setState(() {
          _verificationId = verificationId;
        });

        print('Code Sent');
       

        // await FirebaseAuth.instance.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
      timeout: const Duration(seconds: 60),
    );
  }

  var currentText;
  String _verificationId = '';

  verifyOtp() async {
    print(currentText);
    await FirebaseAuth.instance
        .signInWithCredential(PhoneAuthProvider.credential(
      verificationId: _verificationId,
      smsCode: currentText,
    ))
        .then((value) {
      if (value.user != null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => MyHomePage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                'Verify +91-${widget.phone}',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: PinCodeTextField(
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              animationDuration: Duration(milliseconds: 100),
              errorAnimationController: errorController, // Pass it here
              onChanged: (value) {
                setState(() {
                  currentText = value;
                });
              },
              appContext: (context),
            ),
          ),
         
          startTimer(),

          ElevatedButton(onPressed: () => {verifyOtp()}, child: Text('Verify')),
          ElevatedButton(onPressed: () => {sendOTP()}, child: Text('Resend')),
        ],
      ),
    );
  }
}
