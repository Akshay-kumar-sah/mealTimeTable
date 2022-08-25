import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealtimetable/Screen/loginPage.dart';
import './Screen/loginPage.dart';

class AccountPage extends StatefulWidget {
  // AccountPage({Key? key}) : super(key: key);
  static const routeName = "AccountPage";
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Account'),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text('YourName'),
            ),
          ),
          TextButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (route) => false);
              },
              // onPressed: (() {
              //   Navigator.of(context).pushNamed(LoginPage.routeName);
              // }),
              child: Text("LogOut")),
        ],
      ),
    );
  }
}
