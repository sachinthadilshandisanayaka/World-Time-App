import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test02/services/worldTime.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(
        location: 'New_York', flag: 'america.png', url: 'America/New_York'),
    WorldTime(location: 'Colombo', flag: 'sl.png', url: 'Asia/Colombo'),
    WorldTime(location: 'Tokyo', flag: 'china.png', url: 'Asia/Tokyo'),
    WorldTime(location: 'Canary', flag: 'sl.png', url: 'Atlantic/Canary'),
    WorldTime(location: 'Currie', flag: 'sl.png', url: 'Australia/Currie'),
    WorldTime(location: 'Paris', flag: 'sl.png', url: 'Europe/Paris'),
    WorldTime(location: 'Rome', flag: 'sl.png', url: 'Europe/Rome'),
    WorldTime(location: 'Fiji', flag: 'sl.png', url: 'Pacific/Fiji'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
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
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              onTap: () {
                updateTime(index);
              },
              title: Text(locations[index].location),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/${locations[index].flag}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
