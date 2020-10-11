import 'package:flutter/material.dart';
import 'package:test02/services/worldTime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime worldTime = new WorldTime(
        location: 'Colombo', flag: 'Srilanka.png', url: 'Asia/Colombo');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': worldTime.location,
      'flag': worldTime.flag,
      'time': worldTime.time
    });
  }

  @override
  void initState() {
    // it run when the main widget start to run
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text('Loading...'),
      ),
    );
  }
}
