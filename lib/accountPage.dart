import 'package:flutter/material.dart';

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
    );
  }
}
