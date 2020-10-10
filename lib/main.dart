// import 'dart:html';
// import 'dart:js';
// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test02/pages/home.dart';
import 'package:test02/pages/loading.dart';
import 'package:test02/pages/chooseLocation.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home', // default route
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
