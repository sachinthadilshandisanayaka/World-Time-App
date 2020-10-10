// import 'dart:html';
// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState function run');
  }

  @override
  Widget build(BuildContext context) {
    print('Build function run');
    return Scaffold(
      backgroundColor: Color.fromRGBO(46, 64, 83, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(21, 101, 192, 1.0),
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text(
              'Choose location screen',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
              child: Text('Counter is $counter'),
            ),
          ],
        ),
      ),
    );
  }
}
