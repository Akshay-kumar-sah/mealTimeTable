import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  // SettingPage({Key? key}) : super(key: key);
  static const routeName = "SettingPage";
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
    );
  }
}
