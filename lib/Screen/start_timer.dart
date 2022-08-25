//import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';

class startTimer extends StatefulWidget {
  startTimer({Key? key}) : super(key: key);

  @override
  State<startTimer> createState() => _startTimerState();
}

class _startTimerState extends State<startTimer> {
  int start = 60;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("00 : $start"),
    );
  }

  void startTimer() {
    const onSec = Duration(seconds: 1);

    Timer timer = Timer.periodic(onSec, (timer) {});
    if (start == 0) {
      setState(() {
        timer.cancel();
      });
    } else {
      setState(() {
        start--;
      });
    }
  }
}
