import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 130.0, 0.0, 0.0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontFamily: 'Dosis',
                    ),
                  ),
                ],
              ),
              SizedBox(width: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 40.0,
                      letterSpacing: 2.0,
                      fontFamily: 'Dosis',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
