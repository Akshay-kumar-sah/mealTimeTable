//import 'dart:html';

import 'package:flutter/material.dart';

class sundayMealItem extends StatelessWidget {
  //const sundayMealItem({Key? key}) : super(key: key);
  static const routeName = "sundayMealItem";
  var orientation, size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Meal Time Table ')),
      ),
      body: SingleChildScrollView(
        //controller:controller,
        child: Column(
          children: [
            Container(
              height: height / 8,
              width: width,
              //margin: EdgeInsets.all(10.0),
              // padding: EdgeInsets.all(10.0),
              child: const Center(
                // heightFactor: 2,
                // widthFactor: 2,
                child: Card(
                  elevation: 50.0,
                  //shadowColor: Color.fromARGB(255, 240, 84, 12),
                  // surfaceTintColor: Color.fromARGB(255, 184, 72, 72),
                  //margin: EdgeInsets.all(10.0),
                  // clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Text(
                    'BreakFast',
                    style: TextStyle(fontSize: 30.0, fontFamily: "Cursive"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
