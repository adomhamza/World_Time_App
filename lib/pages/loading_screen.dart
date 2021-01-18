import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading...';
  void setUpWorldTime() async {
    try {
      WorldTime instance =
          WorldTime(location: 'Accra', flag: 'gh.png', url: 'Africa/Accra/');
      await instance.getTime();
      print(instance.time);
      setState(() {
        time = instance.time;
      });
    } catch (e) {
      print('caught error in loading_screen: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
    //print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
